import PackageDescription

// swift-tools-version: 5.9
let package = Package(
    name: "SweetTool",
    platforms: [.iOS(.v14), .macOS(.v11)],
    products: [
        .library(name: "SweetTool", targets: ["SweetTool"]),
    ],
    dependencies: [
        // 添加依赖项
    ],
    targets: [
        .target(name: "SweetTool", dependencies: []),
    ],
	 toolsVersion: "5.9"
)
