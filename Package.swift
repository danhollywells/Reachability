// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Reachability",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "Reachability",
            targets: ["Reachability"]),
    ],
    targets: [
        .target(
            name: "Reachability",
            path: ".",
            exclude: ["iOSReachabilityTestARC", "MacOSReachabilityTestARC", "Framework"],
            resources: [
                .process("LICENCE.txt"),
                .process("CODE_OF_CONDUCT.md"),
                .process("README.md"),
                .process("Reachability.podspec"),
            ],
            publicHeadersPath: "include")
    ]
)
