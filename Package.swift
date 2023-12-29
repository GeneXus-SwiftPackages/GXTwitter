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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.4.0-beta.6")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXTwitter-1.4.0-beta.6.xcframework.zip",
			checksum: "b5bd43d5580583af79b4ba97841910b6aff3d07ac90542f212a705f9e5825953"
		)
	]
)