Pod::Spec.new do |s|
s.name = "TQSwift"
s.version = "1.1.0"
s.summary      = "Taqtile Swift lib"

s.homepage     = "https://github.com/indigotech/SwiftBaseLibrary"
s.license = { :type => 'Comercial'}
s.author  = { "Taqtile" => "rafael.ring@taqtile.com" }
s.source       = { :git => "https://github.com/indigotech/SwiftBaseLibrary", :tag => "iOS-1.1.0" }

s.platform = :ios, '8.0'
s.requires_arc = true
s.source_files = 'TQSwift/*.h'
s.vendored_library = 'TQSwift/libTQSwift.a'

s.library = 'TQSwift'
s.dependency 'TQToffee', '~> 1.1.0'
end
