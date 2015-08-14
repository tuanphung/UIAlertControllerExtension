Pod::Spec.new do |s|
  s.name         = "UIAlertControllerExtension"
  s.version      = "1.0"
  s.summary      = "An extension allow you present an alert with new UIAlertController quickly."

  s.description  = <<-DESC
                   Allow you present an UIAlertController with one of two styles (Alert or ActionSheet).
                   Quick, Simply in use, and Event handler by closure.
                   DESC

  s.homepage     = "https://github.com/tuanphung/UIAlertController-Extension"

  s.license      = "MIT"

  s.author             = { "Tuan Phung" => "tuanphunglk@gmail.com" }
  s.social_media_url   = "https://twitter.com/tuanphunglk"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/tuanphung/UIAlertController-Extension.git", :tag => s.version }
  s.source_files  = "Source/*.swift"

  s.framework  = "UIKit"
  s.requires_arc = true

end
