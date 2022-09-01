#!/bin/bash

set -ex pipefail

PROJECT_ROOT=$(
  cd $(dirname $0)
  pwd
)
PODS_ROOT="$PROJECT_ROOT/Pods"
PODS_PROJECT="$PODS_ROOT/Pods.xcodeproj"
SYMROOT="$PODS_ROOT/Build"
IPHONEOS_DEPLOYMENT_TARGET=14.0

create-xcframework-with-xcodebuild() {
  echo "xcodebuild -create-xcframework $1"
  cd "$PROJECT_ROOT"
  xcodebuild -create-xcframework \
    -framework Pods/Pods/Build/Release-iphonesimulator/$1/$1.framework \
    -framework Pods/Pods/Build/Release-iphoneos/$1/$1.framework \
    -output GoogleMLKit/$1.xcframework
}

create-xcframework-with-maker() {
  echo "xcframework-maker $1"
  cd "$PROJECT_ROOT"
  xcframework-maker/.build/release/make-xcframework \
    -ios ./Pods/$1/Frameworks/$1.framework \
    -output GoogleMLKit
}

archive() {
  cd $PROJECT_ROOT/GoogleMLKit/$1.xcframework/ios-arm64/$1.framework &&
    mv $1 $1.o &&
    ar r $1 $1.o &&
    ranlib $1 &&
    rm $1.o
  cd $PROJECT_ROOT/GoogleMLKit/$1.xcframework/ios-x86_64-simulator/$1.framework &&
    mv $1 $1.o &&
    ar r $1 $1.o &&
    ranlib $1 &&
    rm $1.o
}

echo "Installing Cocoapods with Bundler"
cd "$PROJECT_ROOT"
bundle install
bundle exec pod install

echo "Building XCFrameworkMaker"
cd "$PROJECT_ROOT/xcframework-maker"
swift build -c release

echo "Building Cocoapods"
cd "$PROJECT_ROOT"
xcodebuild -project "$PODS_PROJECT" \
  -sdk iphoneos \
  -configuration Release -alltargets \
  ONLY_ACTIVE_ARCH=NO ENABLE_TESTABILITY=NO SYMROOT="$SYMROOT" \
  CLANG_ENABLE_MODULE_DEBUGGING=NO \
  BITCODE_GENERATION_MODE=bitcode \
  IPHONEOS_DEPLOYMENT_TARGET="$IPHONEOS_DEPLOYMENT_TARGET"
xcodebuild -project "$PODS_PROJECT" \
  -sdk iphonesimulator \
  -configuration Release -alltargets \
  ONLY_ACTIVE_ARCH=NO ENABLE_TESTABILITY=NO SYMROOT="$SYMROOT" \
  CLANG_ENABLE_MODULE_DEBUGGING=NO \
  BITCODE_GENERATION_MODE=bitcode \
  IPHONEOS_DEPLOYMENT_TARGET="$IPHONEOS_DEPLOYMENT_TARGET"

echo "Create XCFrameworks"
cd $PROJECT_ROOT
rm -rf GoogleMLKit

create-xcframework-with-xcodebuild GoogleToolboxForMac
create-xcframework-with-xcodebuild GoogleUtilitiesComponents
create-xcframework-with-xcodebuild Protobuf
create-xcframework-with-maker MLImage
create-xcframework-with-maker MLKitBarcodeScanning
create-xcframework-with-maker MLKitCommon
create-xcframework-with-maker MLKitDigitalInkRecognition
create-xcframework-with-maker MLKitEntityExtraction
create-xcframework-with-maker MLKitFaceDetection
create-xcframework-with-maker MLKitImageLabeling
create-xcframework-with-maker MLKitImageLabelingCommon
create-xcframework-with-maker MLKitImageLabelingCustom
create-xcframework-with-maker MLKitLanguageID
create-xcframework-with-maker MLKitLinkFirebase
create-xcframework-with-maker MLKitMDD
create-xcframework-with-maker MLKitNaturalLanguage
create-xcframework-with-maker MLKitObjectDetection
create-xcframework-with-maker MLKitObjectDetectionCommon
create-xcframework-with-maker MLKitObjectDetectionCustom
create-xcframework-with-maker MLKitPoseDetection
create-xcframework-with-maker MLKitPoseDetectionAccurate
create-xcframework-with-maker MLKitPoseDetectionCommon
create-xcframework-with-maker MLKitSegmentationCommon
create-xcframework-with-maker MLKitSegmentationSelfie
create-xcframework-with-maker MLKitSmartReply
create-xcframework-with-maker MLKitTextRecognition
create-xcframework-with-maker MLKitTextRecognitionChinese
create-xcframework-with-maker MLKitTextRecognitionCommon
create-xcframework-with-maker MLKitTextRecognitionDevanagari
create-xcframework-with-maker MLKitTextRecognitionJapanese
create-xcframework-with-maker MLKitTextRecognitionKorean
create-xcframework-with-maker MLKitTranslate
create-xcframework-with-maker MLKitVision
create-xcframework-with-maker MLKitVisionKit
create-xcframework-with-maker MLKitXenoCommon

archive MLKitBarcodeScanning
archive MLKitDigitalInkRecognition
archive MLKitEntityExtraction
archive MLKitFaceDetection
archive MLKitImageLabeling
archive MLKitLanguageID
archive MLKitMDD
archive MLKitSmartReply
archive MLKitTextRecognitionCommon
archive MLKitTranslate
archive MLKitVisionKit
archive MLKitXenoCommon
