public func show<S: Sequence>(_ sequence: S) where S.Element: AdditiveArithmetic {
    for x in sequence {
        print(x)
    }
}
