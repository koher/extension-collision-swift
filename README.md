# ExtensionCollision

## Duplicate conformance of the same protocol

```swift
// ModuleA
extension Int: Sequence {
    public func makeIterator() -> IndexingIterator<[Int]> {
        [self].makeIterator()
    }
}
```

```swift
// ModuleB
import struct Foundation.Data

extension Int: Sequence {
    public func makeIterator() -> Data.Iterator {
        var value = self
        return Data(bytes: &value, count: MemoryLayout.size(ofValue: value)).makeIterator()
    }
}
```

```swift
// main.swift
import ModuleA
import ModuleB

let n = 65534

for x: Int in n {
    print(x)
}

for x: UInt8 in n {
    print(x)
}
```

## Duplicate method

```swift
// ModuleA
extension Int {
    public func foo() {
        print("ModuleA: \(self)")
    }
}
```

```swift
// ModuleB
extension Int {
    public func foo() {
        print("ModuleB: \(self)")
    }
}
```

```swift
import ModuleA

func useA(for x: Int) {
    x.foo()
}
```

```swift
import ModuleB

func useB(for x: Int) {
    x.foo()
}
```

```swift
// main.swift
useA(for: 42)
useB(for: 42)
```
