// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIMenu",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "SwiftUIMenu",
            targets: ["SwiftUIMenu"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftUIMenu",
            dependencies: []),
        .testTarget(
            name: "SwiftUIMenuTests",
            dependencies: ["SwiftUIMenu"]),
    ],
    swiftLanguageVersions: [.v5]
)
