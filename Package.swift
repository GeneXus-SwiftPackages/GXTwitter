// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXTwitter",
	platforms: [.iOS("12.0")],
	products: [
		.library(
			name: "GXTwitter",
			targets: ["GXTwitterWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.3.0-beta.2")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXTwitter-1.3.0-beta.2.xcframework.zip",
			checksum: "afcfab7361c6d403d2552b09f6ed38a7216e461736ec6130311bb3e07c715fb8"
		)
	]
)