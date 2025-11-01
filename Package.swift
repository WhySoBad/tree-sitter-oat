// swift-tools-version:5.3

import Foundation
import PackageDescription

var sources = ["src/parser.c"]
if FileManager.default.fileExists(atPath: "src/scanner.c") {
    sources.append("src/scanner.c")
}

let package = Package(
    name: "TreeSitterOatV1",
    products: [
        .library(name: "TreeSitterOatV1", targets: ["TreeSitterOatV1"]),
    ],
    dependencies: [
        .package(name: "SwiftTreeSitter", url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterOatV1",
            dependencies: [],
            path: ".",
            sources: sources,
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterOatV1Tests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterOatV1",
            ],
            path: "bindings/swift/TreeSitterOatV1Tests"
        )
    ],
    cLanguageStandard: .c11
)
