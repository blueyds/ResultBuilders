// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ResultBuilders",
    platforms: [ .iOS(.v16),
                .macOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DictionaryBuilder",
            targets: ["DictionaryBuilder"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DictionaryBuilder"),
        .testTarget(
            name: "DictionaryBuilderTests",
            dependencies: ["DictionaryBuilder"]),
    ]
)
