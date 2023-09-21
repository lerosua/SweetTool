// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SweetTool",
    platforms: [.iOS(.v14), .macOS(.v11)],
    products: [
        .library(name: "sweetTool", targets: ["sweetTool"]),
    ],
    dependencies: [
        // 添加依赖项
		  .package(url: "https://github.com/apple/swift-corelibs-ios.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "sweetTool", dependencies: [],
		path:"Extension"),
    ]
)
