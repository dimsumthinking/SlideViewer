// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SlideViewer",
    platforms: [.macOS(.v12), .iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SlideViewer",
            targets: ["SlideViewer"]),
    ],
    dependencies: [
      .package(name: "SlideStyler",
               url: "https://github.com/dimsumthinking/SlideStyler.git",
               branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SlideViewer",
            dependencies: ["SlideStyler"]),
        .testTarget(
            name: "SlideViewerTests",
            dependencies: ["SlideViewer"]),
    ]
)
