// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let commonDependencies: [PackageDescription.Package.Dependency] = [
    .package(url: "https://github.com/aaronsky/asc-swift.git", .upToNextMajor(from: "1.4.1")),
]

let remoteDependencies: [PackageDescription.Package.Dependency] = commonDependencies + [
]

let localDependencies: [PackageDescription.Package.Dependency] = commonDependencies + [
]

let dependencies: [PackageDescription.Package.Dependency] = localDependencies

let package = Package(
    name: "OversizeAppStoreModels",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
        .tvOS(.v16),
        .watchOS(.v9),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "OversizeAppStoreModels",
            targets: ["OversizeAppStoreModels"]
        )
    ],
    dependencies: dependencies,
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "OversizeAppStoreModels", dependencies: [
                .product(name: "AppStoreConnect", package: "asc-swift")
            ]
        ),
        .testTarget(
            name: "OversizeAppStoreModelsTests",
            dependencies: ["OversizeAppStoreModels"]
        )
    ],
)
