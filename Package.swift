// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Storyly",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Storyly",
            targets: ["StorylyTargets"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "StorylyTargets",
            dependencies: [
                .target(name: "Storyly"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "Storyly",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/2.0.1/Storyly.zip",
            checksum: "ddfcaa9973b487e4ee6b2b5e3fd368d9c679ef9e778c38d9357963f2c608a6a8"
        )
    ]
)
