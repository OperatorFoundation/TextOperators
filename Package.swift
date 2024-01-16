// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TextOperators",
    platforms: [
        .macOS(.v14),
        .iOS(.v14),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TextOperators",
            targets: ["TextOperators"]),
    ],
    dependencies: [
        .package(url: "https://github.com/OperatorFoundation/Datable", branch: "main"),
        .package(url: "https://github.com/blanu/Starfish", branch: "main"),
        .package(url: "https://github.com/OperatorFoundation/SwiftHexTools", branch: "main"),
        .package(url: "https://github.com/OperatorFoundation/Text", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TextOperators",
            dependencies: [
                "Datable",
                "Starfish",
                "SwiftHexTools",
                "Text",
            ]
        ),
        .testTarget(
            name: "TextOperatorsTests",
            dependencies: [
		"Text",
		"TextOperators"
	]),
    ],
    swiftLanguageVersions: [.v5]
)
