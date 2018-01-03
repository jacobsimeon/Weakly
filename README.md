[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

# Weakly

Sweeten up syntax for passing functions that need to use `[weak self]`

## Usage

Passing a member function as a parameter looks real nice:

```swift
class MyClass {
  // ...

  func poll() {
    self.timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true, block: doPoll)
  }
  
  func doPoll(timer: Timer) {
    // .. do the polling
  }
}
```

There's just one problem, passing `doPoll` implicitly retains `self` which could cause a retain cycle.
They typical way around this is to wrap everything in a closure that maintains a weak reference to `self`, e.g.:
```swift
  func poll() {
    self.timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { [weak self] in
      self?.doPoll()
    }
  }
```

The above example avoids the retain cycle (which is great). But it's a lot of extra ceremony that 
obscures what the code is trying to express.

This is where `Weakly` comes in. It provides a simple way to pass a member function as a parameter without retaining self:

```swift
  func poll() {
    self.timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true, block: w(self, MyClass.doPoll))
  }
```

Weakly supports functions that take a ridiculously high number of arguments ([a la Curry][curry-quote]), 
with or without return values as well:

```swift
import RxSwift

func go(observable: Observable<Thing1>) {
  observable
    .map(w(self, handle1))
    .map(w(self, handle2))
    .subscribe(onNext: w(self, process))
}

private func handle1(thing: Thing1) -> (Thing2, Thing3) {
  return (Thing2(), Thing3())
}

private func handle2(thing2: Thing2, thing3: Thing3) -> Thing4 {
  return Thing4()
}

private func process(thing4: Thing4) {
  // do something with the final thing
}

```

## Installation

Add this to your Cartfile

```
github "jacobsimeon/Weaken"
```

Then run `carthage update`

## Credit

Heavily inspired by [Function references in Swift and retain cycles][swift-funcs] by [Lammert Westerhoff][westerhoff].  
Thanks to [Curry][curry] for giving me the idea to generate the code :) 

[curry]: https://github.com/thoughtbot/Curry
[swift-funcs]: http://blog.xebia.com/function-references-in-swift-and-retain-cycles/
[westerhoff]: https://github.com/lammertw
[curry-quote]: https://github.com/thoughtbot/Curry/blob/386b0604f19a172f8937bc6747d57e549ea4361c/bin/generate#L3