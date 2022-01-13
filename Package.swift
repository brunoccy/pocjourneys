// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pocjournys",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Home",
            targets: ["Home"]),
        .library(
            name: "Login",
            targets: ["Login"]),
        .library(
            name: "Profile",
            targets: ["Profile"]),
        
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "Home", dependencies: [],
                path: "Home/Sources/Home"),
        .testTarget(name: "HomeTests", dependencies: ["Home"],
                            path: "Home/Tests/HomeTests"),
        
        .target(name: "Login", dependencies: [],
                path: "Login/Sources/Login"),
        .testTarget(name: "LoginTests", dependencies: ["Login"],
                            path: "Login/Tests/LoginTests"),
        
        .target(name: "Profile", dependencies: [],
                path: "Profile/Sources/Profile"),
        .testTarget(name: "ProfileTests", dependencies: ["Profile"],
                            path: "Profile/Tests/ProfileTests"),
        
    ]
)
