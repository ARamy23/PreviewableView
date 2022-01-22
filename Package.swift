// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "PreviewableView",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .tvOS(.v13),
        .watchOS(.v7)
    ],
    products: [
        .library(
            name: "PreviewableView",
            targets: ["PreviewableView"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "PreviewableView"),
    ]
)
