// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DMN",
    platforms: [
        .macOS(.v10_15), .iOS(.v14), .watchOS(.v7), .tvOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DMN",
            targets: ["DMN13"]),
/*        .library(name: "BMPN",
                 targets: ["BPMN20"]),
        .library(name: "BMM",
                 targets: ["BMM"]),*/
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
//        .package(url: "../BPMN/", from: "0.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DMN13",
            dependencies: [
                //.product(name: "BMPN20", package: "BPMN")
                
                ]),
        .testTarget(
            name: "DMN13Tests",
            dependencies: ["DMN13"]),
/*        .target(
            name: "BPMN20",
            dependencies: []),
        .testTarget(
            name: "BPMN20Tests",
            dependencies: ["BPMN20"]),
        .target(
            name: "BMM",
            dependencies: []),*/
    ]
)
