Pod::Spec.new do |s|
  s.name             = "VIPERS-Router-Protocol"
  s.version          = "0.2.0"
  s.summary          = "Protocols for the router implementation used by the iOS application framework 'VIPERS'"

  s.description      = <<-DESC
Protocols for the router implementation used by the iOS application framework 'VIPERS'.
                       DESC

  s.homepage         = "https://github.com/VIPER-Swift/VIPERS-Router-Protocol"
  s.license          = 'MIT'
  s.author           = { "Jan Bartel" => "barteljan@yahoo.de" }
  s.source           = { :git => "https://github.com/VIPER-Swift/VIPERS-Router-Protocol.git", :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'VIPERS-Router-Protocol/Classes/**/*'

  s.dependency 'VIPERS-Converter-Protocol'
end
