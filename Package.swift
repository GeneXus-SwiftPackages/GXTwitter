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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.0.0-rc.2")
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
			url: "https://pkgs.genexus.dev/iOS/preview/GXTwitter-3.0.0-rc.2.xcframework.zip",
			checksum: "4ad2fa2714a2bad2225bac8db4d2e9447d2286c809cc3656425432b6777aadee"
		)
	]
)