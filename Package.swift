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
                .target(name: "SDWebImage"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "Storyly",
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/1.17.3/Storyly.zip",
            checksum: "c1df599f59a3be7b1ff0959fc503b0f2b4a9e80d96910e6fa9256048d129c310"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "https://prod-storyly-media.s3.eu-west-1.amazonaws.com/storyly-sdk/SDWebImage/SDWebImage.xcframework.zip",
            checksum: "975ffdf5054ebc8c0f8056c429dfee4298675ff7e8852d290d512101d451e6be"
        )
    ]
)
