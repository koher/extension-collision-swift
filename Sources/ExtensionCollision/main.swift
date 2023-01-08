// Duplicate conformance of the same protocol
import ModuleA
import ModuleB

let n = 65534

for x: Int in n {
    print(x)
}

for x: UInt8 in n {
    print(x)
}

// Duplicate method
useA(for: 42)
useB(for: 42)
