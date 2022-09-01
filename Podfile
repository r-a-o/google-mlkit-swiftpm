platform :ios, '14.0'

install! 'cocoapods', integrate_targets: false

target 'MLKit' do
  use_frameworks!
  pod 'GoogleMLKit/BarcodeScanning', '3.2.0'
  pod 'GoogleMLKit/DigitalInkRecognition', '3.2.0'
  pod 'GoogleMLKit/EntityExtraction', '3.2.0'
  pod 'GoogleMLKit/FaceDetection', '3.2.0'
  pod 'GoogleMLKit/ImageLabeling', '3.2.0'
  pod 'GoogleMLKit/ImageLabelingCustom', '3.2.0'
  pod 'GoogleMLKit/LanguageID', '3.2.0'
  pod 'GoogleMLKit/LinkFirebase', '3.2.0'
  pod 'GoogleMLKit/ObjectDetection', '3.2.0'
  pod 'GoogleMLKit/ObjectDetectionCustom', '3.2.0'
  pod 'GoogleMLKit/PoseDetection', '3.2.0'
  pod 'GoogleMLKit/PoseDetectionAccurate', '3.2.0'
  pod 'GoogleMLKit/SegmentationSelfie', '3.2.0'
  pod 'GoogleMLKit/SmartReply', '3.2.0'
  pod 'GoogleMLKit/TextRecognition', '3.2.0'
  pod 'GoogleMLKit/TextRecognitionChinese', '3.2.0'
  pod 'GoogleMLKit/TextRecognitionDevanagari', '3.2.0'
  pod 'GoogleMLKit/TextRecognitionJapanese', '3.2.0'
  pod 'GoogleMLKit/TextRecognitionKorean', '3.2.0'
  pod 'GoogleMLKit/Translate', '3.2.0'
  pod 'GoogleMLKit/Vision', '3.2.0'
end

# Workaround for Xcode 14 beta
post_install do |installer|
  installer.pods_project.targets.each do |target|
    if target.respond_to?(:product_type) and target.product_type == "com.apple.product-type.bundle"
      target.build_configurations.each do |config|
          config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
      end
    end
  end
end
