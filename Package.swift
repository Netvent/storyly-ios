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
            url: "https://prod-storyly-media.s3-eu-west-1.amazonaws.com/storyly-sdk/4.15.0/Storyly.zip",
            checksum: "176e90fdd8cb8264d055b7872c1638ef178f9be012a12db0ad46b7cde753c646"
        )
    ]
)
