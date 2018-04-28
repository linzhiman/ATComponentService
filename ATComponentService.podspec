Pod::Spec.new do |s|
  s.name         = "ATComponentService"
  s.version      = "0.0.1"
  s.summary      = "ATComponentService for iOS"
  s.homepage     = "https://github.com/linzhiman/ATComponentService"
  s.license      = "MIT"
  s.author             = { "linzhiman" => "154298785@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/linzhiman/ATComponentService", :tag => "#{s.version}" }
  s.source_files = "ATComponentService/**/*.{h,m}"
end
