// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pocjournys",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .library(name: "pocjournys", targets: ["pocjournys"]),
        
        .library(name: "Home", targets: ["Home"]),
        .library(name: "Login", targets: ["Login"]),
        .library(name: "Profile", targets: ["Profile"]),
    ],
    dependencies: [
//        .package(path: "Sources/pocjourneys/Home"),
//        .package(path: "Sources/pocjourneys/Login"),
//        .package(path: "Sources/pocjourneys/Profile"),
        
        .package(name: "Core", url: "https://github.com/brunoccy/Core", .branch("main")),
        .package(name: "AnalyticsInterfaces", url: "https://github.com/brunoccy/AnalyticsInterfaces", .branch("main")),
        .package(name: "NetworkingInterfaces", url: "https://github.com/brunoccy/NetworkingInterfaces.git", .branch("main")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .target(name: "pocjournys", sources: ["Home", "Login", "Profile"]),
        
        .target(name: "Home", dependencies: ["Core", "AnalyticsInterfaces", "NetworkingInterfaces"],
                path: "Home"),

        .target(name: "Login", dependencies: ["Core", "AnalyticsInterfaces", "NetworkingInterfaces"],
                path: "Login"),

        .target(name: "Profile", dependencies: ["Core", "AnalyticsInterfaces", "NetworkingInterfaces"],
                path: "Profile"),
    ]
)
