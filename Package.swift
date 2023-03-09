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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", branch: "beta")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXTwitter-1.0.0-beta+20230309100338.xcframework.zip",
			checksum: "461c2d7d49b62ecbc2bba0e7112d9a5ce1a00e650ffc432174a33571798e0ba8"
		)
	]
)