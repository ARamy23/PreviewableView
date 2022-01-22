// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "PreviewableView",
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
