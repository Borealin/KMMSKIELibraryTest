// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/Borealin/KMMSKIELibraryTest/cn/borealin/skietest/allshared-kmmbridge/0.1.3/allshared-kmmbridge-0.1.3.zip"
let remoteKotlinChecksum = "8a86f56c1fb371e5521a90dc56e50560a14c8b23a20701001c646324c5d57abf"
let packageName = "allshared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)