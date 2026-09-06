// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SwiftMetalCompute",
    platforms: [.macOS(.v13)],
    products: [.library(name: "SwiftMetalCompute", targets: ["SwiftMetalCompute"])],
    targets: [.target(name: "SwiftMetalCompute", dependencies: [])]
)
