// swift-tools-version:5.7
// swiftlint:disable explicit_top_level_acl
import PackageDescription

let package = Package(
  name: "{{ options.name }}",
  platforms: [
    .macOS(.v13),
    .iOS(.v16),
    .tvOS(.v16),
    .watchOS(.v9)
  ],
  products: [
    .library(name: "{{ options.name }}", targets: ["{{ options.name }}"])
  ],
  dependencies: [
    .package(url: "https://github.com/brightdigit/Prch.git", from: "1.0.0-alpha.1"),
    {% for dependency in options.dependencies %}
      .package(url: "https://github.com/{{ dependency.github }}.git", from: "{{ dependency.version }}"),
    {% endfor %}
  ],
  targets: [
    .target(name: "{{ options.name }}", dependencies: [
      .product(name: "PrchModel", package: "Prch")
        {% for dependency in options.dependencies %}
      "{{ dependency.name }}",
      {% endfor %}
    ])
  ]
)
