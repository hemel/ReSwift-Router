// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ReSwift-Router",
    platforms: [.iOS(.v12), .macOS("10.10"), .tvOS("9.0"), .watchOS("2.0")],
    products: [
      .library(name: "ReSwift-Router", targets: ["ReSwiftRouter"]),
    ],
    dependencies: [
      .package(url: "https://github.com/ReSwift/ReSwift.git", .upToNextMajor(from: "6.0.0"))
    ],
    targets: [
      .target(
        name: "ReSwiftRouter",
        dependencies: [
          "ReSwift"
        ],
        path: "ReSwiftRouter"
      )
    ]
)
