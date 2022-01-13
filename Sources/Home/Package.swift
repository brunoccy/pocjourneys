// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Home",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Home",
            targets: ["Home"]),
    ],
    dependencies: [
        .package(url: "https://github.com/brunoccy/Core", .branch("main")),
        .package(url: "https://github.com/brunoccy/AnalyticsInterfaces", .branch("main")),
        .package(url: "https://github.com/brunoccy/NetworkingInterfaces.git", .branch("main")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Home",
            dependencies: ["Core", "AnalyticsInterfaces", "NetworkingInterfaces"]),
        .testTarget(
            name: "HomeTests",
            dependencies: ["Home"]),
    ]
)
