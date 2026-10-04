// swift-tools-version: 5.9
// VerifyIQ eKYC SDK for iOS 13+: the whole flow except the liveness check.
// Released from boost-capital/verifyiq-mobile: every release replaces the XCFrameworks in
// Frameworks/ and tags the commit with the version. The frameworks live in this repository, so
// access to it is all Swift Package Manager needs. Add
// boost-capital/verifyiq-ekyc-ios-liveness (iOS 15) for liveness.
import PackageDescription

let package = Package(
    name: "VerifyIQeKYC",
    platforms: [.iOS(.v13)],
    products: [
        // VerifyIQeKYC re-exports VerifyIQeKYCCore; the app embeds both frameworks.
        .library(name: "VerifyIQeKYC", targets: ["VerifyIQeKYC", "VerifyIQeKYCCore"]),
    ],
    targets: [
        .binaryTarget(name: "VerifyIQeKYCCore", path: "Frameworks/VerifyIQeKYCCore.xcframework"),
        .binaryTarget(name: "VerifyIQeKYC", path: "Frameworks/VerifyIQeKYC.xcframework"),
    ]
)
