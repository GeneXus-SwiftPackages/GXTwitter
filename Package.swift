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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.0.0-beta.5")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXTwitter-2.0.0-beta.5.xcframework.zip",
			checksum: "3ddb075cf90620610a9766c5ceda067b8c27b0c900e3e210f6360e6e38101353"
		)
	]
)