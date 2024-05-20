// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "FontosCapacitorBrowser",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FontosCapacitorBrowser",
            targets: ["FontosCapacitorBrowserPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "FontosCapacitorBrowserPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/FontosCapacitorBrowserPlugin"),
        .testTarget(
            name: "FontosCapacitorBrowserPluginTests",
            dependencies: ["FontosCapacitorBrowserPlugin"],
            path: "ios/Tests/FontosCapacitorBrowserPluginTests")
    ]
)