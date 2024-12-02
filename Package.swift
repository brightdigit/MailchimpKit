// swift-tools-version:5.7
// swiftlint:disable explicit_top_level_acl
import PackageDescription

let package = Package(
  name: "Spinetail",
  platforms: [
    .macOS(.v13),
    .iOS(.v16),
    .tvOS(.v16),
    .watchOS(.v9)
  ],
  products: [
    .library(name: "Spinetail", targets: ["Spinetail"])
  ],
  dependencies: [
    .package(url: "https://github.com/brightdigit/Prch.git", from: "1.0.0-alpha.1")
  ],
  targets: [
    .target(name: "Spinetail", dependencies: [
      .product(name: "PrchModel", package: "Prch")
    ]),
    .testTarget(name: "SpinetailTests", dependencies: ["Spinetail", "Prch"])
  ]
)
