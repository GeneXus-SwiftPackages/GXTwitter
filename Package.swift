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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.2.0-beta.30")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXTwitter-2.2.0-beta.30.xcframework.zip",
			checksum: "132b2877342d6d680cc9ce70593898face687d341c5e7f3c404aaf2ffa54fe2f"
		)
	]
)