# VerifyIQ eKYC SDK for iOS

The VerifyIQ eKYC SDK (iOS 13 and later) as a Swift package. The two XCFrameworks are in
`Frameworks/`, so Swift Package Manager needs nothing else: no account, no token file and no
separate download. This repository is written by the release process; changes made here are
overwritten.

```swift
.package(url: "https://github.com/boost-capital/verifyiq-ekyc-ios", exact: "0.9.2"),
```

Product `VerifyIQeKYC`. For the liveness check (iOS 15 and later) add
`boost-capital/verifyiq-ekyc-ios-liveness` at the same version.

The SDK works only with sessions created by a VerifyIQ partner backend. The integration guide
and sandbox credentials come with a partner agreement; see `LICENSE` for the terms of use.
