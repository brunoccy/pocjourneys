// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Home",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .library(name: "pocjournys", targets: ["pocjournys"]),
        
        .library(name: "Home", targets: ["Home"]),
//        .library(name: "Login", targets: ["Login"]),
//        .library(name: "Profile", targets: ["Profile"]),
    ],
    dependencies: [
//        .package(path: "Sources/pocjourneys/Home"),
//        .package(path: "Sources/pocjourneys/Login"),
//        .package(path: "Sources/pocjourneys/Profile"),
        
        .package(name: "Core", url: "https://github.com/brunoccy/Core", .branch("main")),
        .package(name: "AnalyticsInterfaces", url: "https://github.com/brunoccy/AnalyticsInterfaces", .branch("main")),
        .package(name: "NetworkingInterfaces", url: "https://github.com/brunoccy/NetworkingInterfaces", .branch("main")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .target(name: "pocjournys", sources: ["Home", "Login", "Profile"]),
        
        .target(name: "Home", dependencies: ["Core", "AnalyticsInterfaces",
                                             .product(name: "NetworkingInterfaces", package: "NetworkingInterfaces"),
                                            ],
                path: "Sources"),
        .testTarget(name: "HomeTests", dependencies: ["Home"],
                path: "Tests"),

//        .target(name: "Login", dependencies: ["Core", "AnalyticsInterfaces",
//                                                .product(name: "NetworkingInterfaces", package: "NetworkingInterfaces")],
//                path: "Login/Sources"),
//        .testTarget(name: "LoginTests", dependencies: ["Login"],
//                    path: "Login/Tests"),
//
//        .target(name: "Profile", dependencies: ["Core", "AnalyticsInterfaces",
//                                                    .product(name: "NetworkingInterfaces", package: "NetworkingInterfaces")],
//                        path: "Profile/Sources"),
//        .testTarget(name: "ProfileTests", dependencies: ["Profile"],
//                        path: "Profile/Tests"),
    ]
)
