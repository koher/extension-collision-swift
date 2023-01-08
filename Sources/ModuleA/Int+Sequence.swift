extension Int: Sequence {
    public func makeIterator() -> IndexingIterator<[Int]> {
        [self].makeIterator()
    }
}
