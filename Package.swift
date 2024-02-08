// swift-tools-version:5.9
import PackageDescription


let package = Package(
    name: "dice-server",
    platforms: [
       .macOS(.v13)
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.83.1"),
        .package(url: "https://github.com/open-telemetry/opentelemetry-swift.git", .upToNextMajor(from: "1.9.1")),
        .package(url: "https://github.com/grpc/grpc-swift", from: "1.15.0"),
    ],
    targets: [
        .executableTarget(
            name: "DiceApp",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "OpenTelemetryApi", package: "opentelemetry-swift"),
                .product(name: "OpenTelemetrySdk", package: "opentelemetry-swift"),
                .product(name: "StdoutExporter", package: "opentelemetry-swift"),
                .product(name: "ResourceExtension", package: "opentelemetry-swift"),
                .product(name: "ZipkinExporter", package: "opentelemetry-swift"),
                .product(name: "OpenTelemetryProtocolExporter", package: "opentelemetry-swift"),
                .product(name: "SignPostIntegration", package: "opentelemetry-swift"),
                .product(name: "GRPC", package: "grpc-swift")
            ],
            path: "."
        )
    ]
)
