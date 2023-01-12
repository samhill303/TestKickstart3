// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/samhill303/TestKickstart3/dev/samhill/TestKickstart3/allshared-kmmbridge/0.2.1/allshared-kmmbridge-0.2.1.zip"
let remoteKotlinChecksum = "da1221f6accdae34adc37c4ab81f3d5937ed663f00a64fe64bbf9289baa8e2ed"
let packageName = "KMMBridgeKickStart"

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