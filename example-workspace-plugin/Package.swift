// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ExampleWorkspacePlugin",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ExampleWorkspacePlugin",
            targets: ["ExampleWorkspacePluginPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "ExampleWorkspacePluginPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/ExampleWorkspacePluginPlugin"),
        .testTarget(
            name: "ExampleWorkspacePluginPluginTests",
            dependencies: ["ExampleWorkspacePluginPlugin"],
            path: "ios/Tests/ExampleWorkspacePluginPluginTests")
    ]
)