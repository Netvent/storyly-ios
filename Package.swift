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
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/1.19.3/Storyly.zip",
            checksum: "d0594c8b2cc73de895cef8da3b9399438330bc66aa744d5fc30cf5249f5928f0"
        )
    ]
)
