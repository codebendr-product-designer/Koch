// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Koch",
    products: [
        .executable(
            name: "Koch",
            targets: ["Koch"])
    ],
    dependencies: [
        .package(name: "HTML", url: "https://github.com/robb/Swim.git", .branch("main")),
    ],
    targets: [
        .executableTarget(
            name: "Koch",
            dependencies: [
                .product(name: "Swim", package: "HTML"),
                .product(name: "HTML", package: "HTML"),
            ]),
        .testTarget(
            name: "KochTests",
            dependencies: ["Koch"]),
        
    ]
)
