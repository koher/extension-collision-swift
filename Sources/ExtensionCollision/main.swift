import ModuleA
import ModuleB

let n = 65534

for x: Int in n {
    print(x)
}

for x: UInt8 in n {
    print(x)
}

useA(for: n)
useB(for: n)
