Pod::Spec.new do |s|
  s.name         = "Yuri_Common"
  s.version      = "0.0.2"
  s.summary      = "个人开发常用"
  s.description  = <<-DESC
                    |Yuri_Common|个人开发常用|
                    | ---- | ---- |
                   DESC
  
  s.homepage     = "https://github.com/203Monitor/Yuri_Common"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "yuri" => "wtruth@sohu.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/203Monitor/Yuri_Common.git", :tag => "0.0.2" }

  s.resource = "Yuri_Common/Yuri_Common/Categories/MBProgressHUD.bundle"
  s.source_files = 'Yuri_Common/Yuri_Common/Personal/**/*.{h,m}'

  s.dependency "MBProgressHUD", "~> 0.9.2"

end
