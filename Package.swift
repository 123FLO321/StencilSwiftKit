// swift-tools-version:4.0
import PackageDescription

let package = Package(
  name: "StencilSwiftKit",
  products: [
      .library(name: "StencilSwiftKit", targets: ["StencilSwiftKit"])
  ],
  dependencies: [
      .package(url: "https://github.com/123FLO321/Stencil.git", .upToNextMinor(from: "0.14.0"))
  ],
  targets: [
    .target(
      name: "StencilSwiftKit",
      dependencies: [
        "Stencil"
      ]
    ),
    .testTarget(
      name: "StencilSwiftKitTests",
      dependencies: [
        "StencilSwiftKit"
      ]
    )
  ],
  swiftLanguageVersions: [4]
)
