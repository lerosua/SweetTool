// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "sweetTool",
    platforms: [.iOS(.v14), .macOS(.v11)],
    products: [
        .library(name: "sweetTool", targets: ["sweetTool"]),
    ],
    dependencies: [
        // 添加依赖项
    ],
    targets: [
        .target(name: "sweetTool", dependencies: [],
		path:"Extension"),
    ]
)
