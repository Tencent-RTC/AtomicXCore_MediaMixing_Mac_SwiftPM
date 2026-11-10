// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "AtomicXCore_MediaMixing_Mac",
    platforms: [.macOS(.v11)],
    products: [
        .library(name: "AtomicXCore_MediaMixing_Mac",
                 targets: ["AtomicXCore_MediaMixing_MacBinary", "AtomicXCore_MediaMixing_MacDeps"])
    ],
    dependencies: [
        .package(url: "https://github.com/Tencent-RTC/TRTC_Mac_SwiftPM.git", from: "13.6.21648")
    ],
    targets: [
        .binaryTarget(
            name: "AtomicXCore_MediaMixing_MacBinary",
            url: "https://liteav.sdk.qcloud.com/app/tuikit/download/release/5.3/AtomicXCore_MediaMixing_Mac_5.3.1.2.zip",
            checksum: "8fbc4eb11be01e7320da5de21b62af156d29d291afafeb232871d06286e27e81"
        ),
        .target(
            name: "AtomicXCore_MediaMixing_MacDeps",
            dependencies: [
                .product(name: "TRTC_Mac_SwiftPM", package: "TRTC_Mac_SwiftPM")
            ],
            path: "Sources/Deps"
        )
    ]
)
