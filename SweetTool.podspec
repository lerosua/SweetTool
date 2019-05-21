Pod::Spec.new do |s|
  s.name             = "SweetTool"
  s.version          = "0.0.1"
  s.summary          = "一些方便的swift扩展与工具，个人使用，base on swift5.0"
  s.homepage         = "https://github.com/lerosua/SweetTool.git"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "lerosua" => "lerosua+git@gmail.com" }
  s.source           = { :git => "https://github.com/lerosua/SweetTool.git" }
  s.platform         = :ios, '10.0'
  s.requires_arc     = true

  s.source_files     = 'Extension/*.swift'

  s.frameworks = 'UIKit'
end
