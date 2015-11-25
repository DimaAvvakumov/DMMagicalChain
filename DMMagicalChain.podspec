Pod::Spec.new do |s|

  s.name         = "DMMagicalChain"
  s.version      = "0.0.1"
  s.summary      = "Category for MagicalRecord for queue save requests."
  s.homepage     = "https://github.com/DimaAvvakumov/DMMagicalChain.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Dmitry Avvakumov" => "avvakumov@it-baker.ru" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/DimaAvvakumov/DMMagicalChain.git" }
  s.source_files = "classes/*.{h,m}"
  s.public_header_files = "classes/*.{h,m}"
  s.framework    = "UIKit"
  s.requires_arc = true

end
