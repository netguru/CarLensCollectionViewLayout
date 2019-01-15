Pod::Spec.new do |s|

  s.name          = "CarLensCollectionViewLayout"
  s.version       = "1.1.0"
  s.summary       = "An easy to use Collection View Layout for card-like animation."

  s.homepage      = "https://github.com/netguru/CarLensCollectionViewLayout"
  s.license       = { :type => "MIT", :file => "LICENSE.md" }
  s.authors       = { "Anna-Mariia Shkarlinska" => "anna-mariia.shkarlinska@netguru.co",
                      "Michał Kwiecień" => "michal.kwiecien@netguru.co" }

  s.platform      = :ios, "9.0"
  s.source        = { :git => "https://github.com/netguru/CarLensCollectionViewLayout.git", :tag => "#{s.version}" }
  s.source_files  = "CarLensCollectionViewLayout/**/*.swift"
  s.swift_version = "4.2"
  s.framework     = "UIKit"

end