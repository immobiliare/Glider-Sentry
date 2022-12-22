// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GliderSentry",
    platforms: [
        .iOS(.v10), .macOS(.v10_14), .tvOS(.v12)
    ],
    products: [
        .library(name: "GliderSentry", targets: ["GliderSentry"])
    ],
    dependencies: [
        .package(url: "https://github.com/immobiliare/Glider.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/getsentry/sentry-cocoa.git", .upToNextMajor(from: "7.0.0"))
    ],
    targets: [
        .target(
            name: "GliderSentry",
            dependencies: [
                "Glider",
                .product(name: "Sentry", package: "sentry-cocoa")
            ],
            path:"GliderSentry/Sources"
        ),
        .testTarget(
            name: "GliderSentryTests",
            dependencies: [
                "Glider",
                "GliderSentry"
            ],
            path: "Tests/GliderSentryTests"
        )
    ]
)
