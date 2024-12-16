// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXTwitter",
	platforms: [.iOS("13.0")],
	products: [
		.library(
			name: "GXTwitter",
			targets: ["GXTwitterWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.2.0-beta.24")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXTwitter-2.2.0-beta.24.xcframework.zip",
			checksum: "9e46239d51fa96cf856a5b0c5996581651fc4f015e77c95ee53e849c4220b455"
		)
	]
)