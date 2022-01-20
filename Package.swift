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
        .package(name: "StructuralSPM", url: "https://github.com/FelippeMatos/multi-structural-module", .branch("ios/bruno-spm")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .target(name: "pocjournys", sources: ["Home", "Login", "Profile"]),
        
        .target(name: "Home", dependencies: [.product(name: "Core", package: "StructuralSPM"),
                                             .product(name: "AnalyticsInterfaces", package: "StructuralSPM"),
                                             .product(name: "NetworkingInterfaces", package: "StructuralSPM"),],
                path: "Home/Sources"),
        .testTarget(name: "HomeTests", dependencies: ["Home"],
                path: "Home/Tests"),

        .target(name: "Login", dependencies: [.product(name: "Core", package: "StructuralSPM"),
                                              .product(name: "AnalyticsInterfaces", package: "StructuralSPM"),
                                              .product(name: "NetworkingInterfaces", package: "StructuralSPM"),],
                path: "Login/Sources"),
        .testTarget(name: "LoginTests", dependencies: ["Login"],
                    path: "Login/Tests"),

        .target(name: "Profile", dependencies: [.product(name: "Core", package: "StructuralSPM"),
                                                .product(name: "AnalyticsInterfaces", package: "StructuralSPM"),
                                                .product(name: "NetworkingInterfaces", package: "StructuralSPM"),],
                        path: "Profile/Sources"),
        .testTarget(name: "ProfileTests", dependencies: ["Profile"],
                        path: "Profile/Tests"),
    ]
)
