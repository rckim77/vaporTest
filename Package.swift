// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "HelloTest",
    products: [
        .library(name: "App", targets: ["App"]),
        .executable(name: "Run", targets: ["Run"])
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor", "LeafProvider"],
                exclude: [
                    "Config",
                    "Database",
                    "Public",
                    "Resources"
            ]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App", "Testing"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMajor(from: "2.2.0")),
        .package(url: "https://github.com/vapor/leaf-provider.git", .upToNextMajor(from: "1.1.0")),
    ]
)

