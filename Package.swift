// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXTwitter",
	platforms: [.iOS("15.0")],
	products: [
		.library(
			name: "GXTwitter",
			targets: ["GXTwitterWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.1.0")
	],
	targets: [
		.target(name: "GXTwitterWrapper",
				dependencies: [
					"GXTwitter",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXTwitter",
			url: "https://pkgs.genexus.dev/iOS/releases/GXTwitter-3.1.0.xcframework.zip",
			checksum: "eadbf69506744173a90445b7e8db50feae74bdb154918c377cb44b84bf1eaff6"
		)
	]
)