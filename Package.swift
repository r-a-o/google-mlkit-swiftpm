// swift-tools-version: 5.6

import PackageDescription

let package = Package(
  name: "GoogleMLKitSwiftPM",
  platforms: [.iOS(.v14)],
  products: [
    .library(
      name: "MLKitBarcodeScanning",
      targets: ["MLKitBarcodeScanning", "MLImage", "MLKitVision", "Common"]),
    .library(
      name: "MLKitDigitalInkRecognition",
      targets: ["MLKitDigitalInkRecognition", "MLKitMDD", "SSZipArchive", "Common"]),
    .library(
      name: "MLKitEntityExtraction",
      targets: ["MLKitEntityExtraction", "MLKitNaturalLanguage", "Common"]),
    .library(
      name: "MLKitFaceDetection",
      targets: ["MLKitFaceDetection", "MLImage", "MLKitVision", "Common"]),
    .library(
      name: "MLKitImageLabeling",
      targets: [
        "MLKitImageLabeling", "MLKitImageLabelingCommon", "MLKitObjectDetectionCommon", "MLImage",
        "MLKitVision", "MLKitVisionKit", "Common",
      ]),
    .library(
      name: "MLKitImageLabelingCustom",
      targets: [
        "MLKitImageLabelingCustom", "MLKitImageLabelingCommon", "MLKitObjectDetectionCommon",
        "MLImage",
        "MLKitVision", "MLKitVisionKit", "Common",
      ]),
    .library(
      name: "MLKitLanguageID", targets: ["MLKitLanguageID", "MLKitNaturalLanguage", "Common"]),
    .library(
      name: "MLKitLinkFirebase", targets: ["MLKitLinkFirebase"]
    ),
    .library(
      name: "MLKitObjectDetection",
      targets: [
        "MLKitObjectDetection", "Common", "MLImage", "MLKitImageLabelingCommon",
        "MLKitObjectDetectionCommon", "MLKitVisionKit",
      ]),
    .library(
      name: "MLKitPoseDetection",
      targets: [
        "MLKitPoseDetection", "MLKitPoseDetectionCommon", "MLKitVision", "MLKitXenoCommon",
        "Common",
      ]),
    .library(
      name: "MLKitPoseDetectionAccurate",
      targets: [
        "MLKitPoseDetectionAccurate", "MLKitPoseDetectionCommon", "MLKitVision", "MLKitXenoCommon",
        "Common",
      ]),
    .library(
      name: "MLKitSegmentationSelfie",
      targets: [
        "MLKitSegmentationSelfie", "MLKitSegmentationCommon", "MLImage", "Common",
      ]),
    .library(
      name: "MLKitSmartReply",
      targets: [
        "MLKitSmartReply", "MLKitLanguageID", "MLKitNaturalLanguage", "Common",
      ]),
    .library(
      name: "MLKitTextRecognition",
      targets: [
        "MLKitTextRecognition", "MLKitTextRecognitionCommon", "MLKitVision", "MLImage", "Common",
      ]),
    .library(
      name: "MLKitTextRecognitionChinese",
      targets: [
        "MLKitTextRecognitionChinese", "MLKitTextRecognitionCommon", "MLKitVision", "MLImage",
        "Common",
      ]),
    .library(
      name: "MLKitTextRecognitionDevanagari",
      targets: [
        "MLKitTextRecognitionDevanagari", "MLKitTextRecognitionCommon", "MLKitVision", "MLImage",
        "Common",
      ]),
    .library(
      name: "MLKitTextRecognitionJapanese",
      targets: [
        "MLKitTextRecognitionJapanese", "MLKitTextRecognitionCommon", "MLKitVision", "MLImage",
        "Common",
      ]),
    .library(
      name: "MLKitTextRecognitionKorean",
      targets: [
        "MLKitTextRecognitionKorean", "MLKitTextRecognitionCommon", "MLKitVision", "MLImage",
        "Common",
      ]),
    .library(
      name: "MLKitTranslate",
      targets: [
        "MLKitTranslate", "MLKitNaturalLanguage", "SSZipArchive", "Common",
      ]),
  ],
  dependencies: [
    .package(url: "https://github.com/google/promises.git", "2.1.0"..<"3.0.0"),
    .package(url: "https://github.com/google/GoogleDataTransport.git", "9.1.4"..<"10.0.0"),
    .package(url: "https://github.com/google/GoogleUtilities.git", "7.7.1"..<"8.0.0"),
    .package(url: "https://github.com/google/gtm-session-fetcher.git", "1.7.2"..<"2.1.0"),
    .package(url: "https://github.com/firebase/nanopb.git", "2.30909.0"..<"2.30910.0"),
    .package(url: "https://github.com/ZipArchive/ZipArchive.git", from: "2.4.2"),
  ],
  targets: [
    .binaryTarget(name: "MLImage", url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/3.2.0/MLImage.xcframework.zip", checksum: "d360820204628a8d6d9a915d0bd9ed78aec6ed0eeed7c84c1e78bd85909bbe37"),
    .binaryTarget(
      name: "MLKitBarcodeScanning", url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/3.2.0/MLKitBarcodeScanning.xcframework.zip", checksum: "93cf8f4cbda516f0db4895e951a9430e07f8b3d44b55d2193fbd079e27d2f5fa"),
    .binaryTarget(name: "MLKitCommon", url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/3.2.0/MLKitCommon.xcframework.zip", checksum: "50e1c24fc66b9a5b0516dccee5a27bca226e4f41f661799fc96873b572b51417"),
    .binaryTarget(
      name: "MLKitDigitalInkRecognition", path: "GoogleMLKit/MLKitDigitalInkRecognition.xcframework"
    ),
    .binaryTarget(
      name: "MLKitEntityExtraction", path: "GoogleMLKit/MLKitEntityExtraction.xcframework"),
    .binaryTarget(name: "MLKitFaceDetection", url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/3.2.0/MLKitFaceDetection.xcframework.zip", checksum: "dbdc769316aa27e316a6404ee9cac847265e0ba6a164f680d10aaa192978fdfb"),
    .binaryTarget(name: "MLKitImageLabeling", path: "GoogleMLKit/MLKitImageLabeling.xcframework"),
    .binaryTarget(
      name: "MLKitImageLabelingCommon", path: "GoogleMLKit/MLKitImageLabelingCommon.xcframework"),
    .binaryTarget(
      name: "MLKitImageLabelingCustom", path: "GoogleMLKit/MLKitImageLabelingCustom.xcframework"),
    .binaryTarget(name: "MLKitLanguageID", path: "GoogleMLKit/MLKitLanguageID.xcframework"),
    .binaryTarget(name: "MLKitLinkFirebase", path: "GoogleMLKit/MLKitLinkFirebase.xcframework"),

    .binaryTarget(name: "MLKitMDD", path: "GoogleMLKit/MLKitMDD.xcframework"),
    .binaryTarget(
      name: "MLKitNaturalLanguage", path: "GoogleMLKit/MLKitNaturalLanguage.xcframework"),
    .binaryTarget(
      name: "MLKitObjectDetection", path: "GoogleMLKit/MLKitObjectDetection.xcframework"),
    .binaryTarget(
      name: "MLKitObjectDetectionCommon", path: "GoogleMLKit/MLKitObjectDetectionCommon.xcframework"
    ),
    .binaryTarget(
      name: "MLKitObjectDetectionCustom", path: "GoogleMLKit/MLKitObjectDetectionCustom.xcframework"
    ),
    .binaryTarget(name: "MLKitPoseDetection", path: "GoogleMLKit/MLKitPoseDetection.xcframework"),
    .binaryTarget(
      name: "MLKitPoseDetectionAccurate", path: "GoogleMLKit/MLKitPoseDetectionAccurate.xcframework"
    ),
    .binaryTarget(
      name: "MLKitPoseDetectionCommon", path: "GoogleMLKit/MLKitPoseDetectionCommon.xcframework"),
    .binaryTarget(
      name: "MLKitSegmentationCommon",
      path: "GoogleMLKit/MLKitSegmentationCommon.xcframework"),
    .binaryTarget(
      name: "MLKitSegmentationSelfie", path: "GoogleMLKit/MLKitSegmentationSelfie.xcframework"),
    .binaryTarget(name: "MLKitSmartReply", path: "GoogleMLKit/MLKitSmartReply.xcframework"),
    .binaryTarget(
      name: "MLKitTextRecognition", path: "GoogleMLKit/MLKitTextRecognition.xcframework"),
    .binaryTarget(
      name: "MLKitTextRecognitionChinese",
      path: "GoogleMLKit/MLKitTextRecognitionChinese.xcframework"),
    .binaryTarget(
      name: "MLKitTextRecognitionCommon", path: "GoogleMLKit/MLKitTextRecognitionCommon.xcframework"
    ),
    .binaryTarget(
      name: "MLKitTextRecognitionDevanagari",
      path: "GoogleMLKit/MLKitTextRecognitionDevanagari.xcframework"),
    .binaryTarget(
      name: "MLKitTextRecognitionJapanese",
      path: "GoogleMLKit/MLKitTextRecognitionJapanese.xcframework"),
    .binaryTarget(
      name: "MLKitTextRecognitionKorean", path: "GoogleMLKit/MLKitTextRecognitionKorean.xcframework"
    ),
    .binaryTarget(name: "MLKitTranslate", path: "GoogleMLKit/MLKitTranslate.xcframework"),
    .binaryTarget(name: "MLKitVision", url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/3.2.0/MLKitVision.xcframework.zip", checksum: "19acaf1d993c6911bca9684364d47362cd8ff30ee2609f02a5f94d5143e64edb"),
    .binaryTarget(name: "MLKitVisionKit", path: "GoogleMLKit/MLKitVisionKit.xcframework"),
    .binaryTarget(name: "MLKitXenoCommon", path: "GoogleMLKit/MLKitXenoCommon.xcframework"),
    .binaryTarget(name: "GoogleToolboxForMac", url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/3.2.0/GoogleToolboxForMac.xcframework.zip", checksum: "6f2e01c3fada4c9a92f45cd83374716026cb5aebf4fed1f74bdd3eba9e9d83bc"),
    .binaryTarget(
      name: "GoogleUtilitiesComponents", url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/3.2.0/GoogleUtilitiesComponents.xcframework.zip", checksum: "e9b4e629a140234cee5f4da292219c32f3212fc1fce23c773043e10692abb14d"),
    .binaryTarget(name: "Protobuf", url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/3.2.0/Protobuf.xcframework.zip", checksum: "e411598ad55b7a74bdec956e67fd7e6b453fcd4267c0f7ccfdfad0952a220cbd"),
    .target(
      name: "Common",
      dependencies: [
        "MLKitCommon",
        "GoogleToolboxForMac",
        "GoogleUtilitiesComponents",
        "Protobuf",
        .product(name: "GULAppDelegateSwizzler", package: "GoogleUtilities"),
        .product(name: "GULEnvironment", package: "GoogleUtilities"),
        .product(name: "GULISASwizzler", package: "GoogleUtilities"),
        .product(name: "GULLogger", package: "GoogleUtilities"),
        .product(name: "GULMethodSwizzler", package: "GoogleUtilities"),
        .product(name: "GULNSData", package: "GoogleUtilities"),
        .product(name: "GULNetwork", package: "GoogleUtilities"),
        .product(name: "GULReachability", package: "GoogleUtilities"),
        .product(name: "GULUserDefaults", package: "GoogleUtilities"),
        .product(name: "GTMSessionFetcher", package: "gtm-session-fetcher"),
        .product(name: "GoogleDataTransport", package: "GoogleDataTransport"),
        .product(name: "nanopb", package: "nanopb"),
        .product(name: "FBLPromises", package: "promises"),
      ]),
    .target(
      name: "SSZipArchive",
      dependencies: [
        .product(name: "ZipArchive", package: "ZipArchive")
      ]),
  ]
)
