// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "FHClient",
    products: [
        .executable(
            name: "App",
            targets: ["App"]
        ),
        .library(
            name: "FHClient",
            targets: ["FHClient"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.0.0-alpha.20")
    ],
    targets: [
        .target(
            name: "App",
            dependencies: ["FHClient"]
        ),
        .target(
            name: "FHClient",
            dependencies: ["GRPC"]
        ),
        .testTarget(
            name: "FHClientTests",
            dependencies: ["FHClient"]
        ),
    ]
)
