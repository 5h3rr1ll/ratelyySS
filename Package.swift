// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "RatelyySS",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        // Swift Community Mongokitten
        .package(url: "https://github.com/OpenKitten/MongoKitten.git", from: "4.0.0")
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor", "MongoKitten"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

