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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.2.0-beta.34")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXTwitter-3.2.0-beta.34.xcframework.zip",
			checksum: "f5205ddcb3a8a072401ef8e42afa5104bd5e672895b9b6b33bfe2547c9eb4990"
		)
	]
)