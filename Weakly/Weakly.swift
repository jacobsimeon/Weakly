public func w<T>(
  _ obj: T, 
  _ method: @escaping (T) -> () -> ()
) -> () -> () where T: AnyObject {
  return { [unowned obj] () in
    method(obj)()
  }
}

public func w<T,Z>(
  _ obj: T, 
  _ method: @escaping (T) -> () -> Z
) -> () -> Z where T: AnyObject {
  return { [unowned obj] () in
    return method(obj)()
  }
}

public func w<T,A>(
  _ obj: T, 
  _ method: @escaping (T) -> (A) -> ()
) -> (A) -> () where T: AnyObject {
  return { [unowned obj] (a: A) in
    method(obj)(a)
  }
}

public func w<T,A,Z>(
  _ obj: T, 
  _ method: @escaping (T) -> (A) -> Z
) -> (A) -> Z where T: AnyObject {
  return { [unowned obj] (a: A) in
    return method(obj)(a)
  }
}

public func w<T,A,B>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B) -> ()
) -> (A, B) -> () where T: AnyObject {
  return { [unowned obj] (a: A, b: B) in
    method(obj)(a, b)
  }
}

public func w<T,A,B,Z>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B) -> Z
) -> (A, B) -> Z where T: AnyObject {
  return { [unowned obj] (a: A, b: B) in
    return method(obj)(a, b)
  }
}

public func w<T,A,B,C>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C) -> ()
) -> (A, B, C) -> () where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C) in
    method(obj)(a, b, c)
  }
}

public func w<T,A,B,C,Z>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C) -> Z
) -> (A, B, C) -> Z where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C) in
    return method(obj)(a, b, c)
  }
}

public func w<T,A,B,C,D>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C, D) -> ()
) -> (A, B, C, D) -> () where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C, d: D) in
    method(obj)(a, b, c, d)
  }
}

public func w<T,A,B,C,D,Z>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C, D) -> Z
) -> (A, B, C, D) -> Z where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C, d: D) in
    return method(obj)(a, b, c, d)
  }
}

public func w<T,A,B,C,D,E>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C, D, E) -> ()
) -> (A, B, C, D, E) -> () where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C, d: D, e: E) in
    method(obj)(a, b, c, d, e)
  }
}

public func w<T,A,B,C,D,E,Z>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C, D, E) -> Z
) -> (A, B, C, D, E) -> Z where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C, d: D, e: E) in
    return method(obj)(a, b, c, d, e)
  }
}

public func w<T,A,B,C,D,E,F>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C, D, E, F) -> ()
) -> (A, B, C, D, E, F) -> () where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C, d: D, e: E, f: F) in
    method(obj)(a, b, c, d, e, f)
  }
}

public func w<T,A,B,C,D,E,F,Z>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C, D, E, F) -> Z
) -> (A, B, C, D, E, F) -> Z where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C, d: D, e: E, f: F) in
    return method(obj)(a, b, c, d, e, f)
  }
}

public func w<T,A,B,C,D,E,F,G>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C, D, E, F, G) -> ()
) -> (A, B, C, D, E, F, G) -> () where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C, d: D, e: E, f: F, g: G) in
    method(obj)(a, b, c, d, e, f, g)
  }
}

public func w<T,A,B,C,D,E,F,G,Z>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C, D, E, F, G) -> Z
) -> (A, B, C, D, E, F, G) -> Z where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C, d: D, e: E, f: F, g: G) in
    return method(obj)(a, b, c, d, e, f, g)
  }
}

public func w<T,A,B,C,D,E,F,G,H>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C, D, E, F, G, H) -> ()
) -> (A, B, C, D, E, F, G, H) -> () where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H) in
    method(obj)(a, b, c, d, e, f, g, h)
  }
}

public func w<T,A,B,C,D,E,F,G,H,Z>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C, D, E, F, G, H) -> Z
) -> (A, B, C, D, E, F, G, H) -> Z where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H) in
    return method(obj)(a, b, c, d, e, f, g, h)
  }
}

public func w<T,A,B,C,D,E,F,G,H,I>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C, D, E, F, G, H, I) -> ()
) -> (A, B, C, D, E, F, G, H, I) -> () where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I) in
    method(obj)(a, b, c, d, e, f, g, h, i)
  }
}

public func w<T,A,B,C,D,E,F,G,H,I,Z>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C, D, E, F, G, H, I) -> Z
) -> (A, B, C, D, E, F, G, H, I) -> Z where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I) in
    return method(obj)(a, b, c, d, e, f, g, h, i)
  }
}

public func w<T,A,B,C,D,E,F,G,H,I,J>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C, D, E, F, G, H, I, J) -> ()
) -> (A, B, C, D, E, F, G, H, I, J) -> () where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J) in
    method(obj)(a, b, c, d, e, f, g, h, i, j)
  }
}

public func w<T,A,B,C,D,E,F,G,H,I,J,Z>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C, D, E, F, G, H, I, J) -> Z
) -> (A, B, C, D, E, F, G, H, I, J) -> Z where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J) in
    return method(obj)(a, b, c, d, e, f, g, h, i, j)
  }
}

public func w<T,A,B,C,D,E,F,G,H,I,J,K>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C, D, E, F, G, H, I, J, K) -> ()
) -> (A, B, C, D, E, F, G, H, I, J, K) -> () where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K) in
    method(obj)(a, b, c, d, e, f, g, h, i, j, k)
  }
}

public func w<T,A,B,C,D,E,F,G,H,I,J,K,Z>(
  _ obj: T, 
  _ method: @escaping (T) -> (A, B, C, D, E, F, G, H, I, J, K) -> Z
) -> (A, B, C, D, E, F, G, H, I, J, K) -> Z where T: AnyObject {
  return { [unowned obj] (a: A, b: B, c: C, d: D, e: E, f: F, g: G, h: H, i: I, j: J, k: K) in
    return method(obj)(a, b, c, d, e, f, g, h, i, j, k)
  }
}
