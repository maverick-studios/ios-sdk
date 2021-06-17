// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SuperAppsSDK",
	platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SuperAppsSDK",
            targets: ["SuperApps"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
		.binaryTarget(name: "SuperApps", url: "https://github.com/maverick-studios/ios-sdk/releases/download/0.1.1/SuperApps.xcframework.zip", checksum: "533fcd205b0320a72883dae4aa287d5c21cfc82680ce8cba1923820b899b6f77"),
//		.binaryTarget(name: "SuperAppsSDK", path: "SuperApps.xcframework"),
        .testTarget(
            name: "SuperAppsTests",
            dependencies: ["SuperApps"]),
    ]
)

