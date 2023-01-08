// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExtensionCollision",
    platforms: [.iOS(.v16), .macOS(.v12)],
    dependencies: [],
    targets: [
        .executableTarget(
            name: "ExtensionCollision",
            dependencies: ["ModuleA", "ModuleB", "ModuleC"]),
        .target(
            name: "ModuleA",
            dependencies: []),
        .target(
            name: "ModuleB",
            dependencies: []),
        .target(
            name: "ModuleC",
            dependencies: []),
        .testTarget(
            name: "ExtensionCollisionTests",
            dependencies: ["ExtensionCollision"]),
    ]
)
