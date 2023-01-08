import ModuleB
import Foundation

func useB(for x: Int) {
    x.foo()
    for e: UInt8 in x {
        print(e)
    }
}
