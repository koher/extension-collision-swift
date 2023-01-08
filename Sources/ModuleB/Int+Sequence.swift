import struct Foundation.Data

extension Int: Sequence {
    public func makeIterator() -> Data.Iterator {
        var value = self
        return Data(bytes: &value, count: MemoryLayout.size(ofValue: value)).makeIterator()
    }
}
