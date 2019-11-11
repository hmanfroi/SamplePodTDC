Pod::Spec.new do |s|

  # 1
  s.platform              = :ios
  s.ios.deployment_target = '10.0'
  s.swift_version         = '5.1.0'
  s.name                  = 'SamplePodTDCBlue'
  s.summary               = 'All Agreements Sicredi are wrote down here.'

  # 2
  s.version = '0.0.1'

  # 3
  s.license   = { :type => 'MIT', :file => "LICENSE" }

  # 4
  s.authors   = { 'Henrique' => 'hmanfroi@hotmail.com.br' }

  # 5
  s.homepage  = 'https://github.com/hmanfroi/SamplePodTDC'

  # 6
  s.source    = { :git => 'ssh://git@github.com/hmanfroi/SamplePodTDC.git', :tag => "Blue#{s.version}" }

  # 7
  s.ios.framework = 'UIKit'
  s.ios.framework  = 'Foundation'

  # 8
  s.source_files = [
    "SamplePodTDC/Core/**/*.{swift}",
    "SamplePodTDC/Aplication/**/*.{swift}",
    "SamplePodTDC/SampleBlue/**/*.{swift}"
  ]
  s.public_header_files = '*.h'

  # 9
  # s.resources = ["#{s.name}/**/*.{png}", "#{s.name}/**/*.{xcassets}", "#{s.name}/**/*.{storyboard}", "#{s.name}/**/*.{xib}", "#{s.name}/**/*.{strings}"]
end
