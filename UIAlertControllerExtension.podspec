Pod::Spec.new do |s|
  s.name         = "UIAlertControllerExtension"
  s.version      = "1.1"
  s.summary      = "An extension allow you present an alert with new UIAlertController from any ViewController quickly."

  s.description  = <<-DESC
                   Allow you present an UIAlertController with one of two styles (Alert or ActionSheet).
                   Quickly, Simply in use, and Event handling by closure.
                   DESC

  s.homepage     = "https://github.com/tuanphung/UIAlertControllerExtension"

  s.license      = "MIT"

  s.author             = { "Tuan Phung" => "tuanphunglk@gmail.com" }
  s.social_media_url   = "https://twitter.com/tuanphunglk"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/tuanphung/UIAlertControllerExtension.git", :tag => s.version }
  s.source_files  = "Source/*.swift"

  s.framework  = "UIKit"
  s.requires_arc = true

end
