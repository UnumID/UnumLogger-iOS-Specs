Pod::Spec.new do |s|
    s.name         = "UnumLogger"
    s.version      = "1.0.4"
    s.summary      = "The UnumID Logger SDK."
    s.description  = <<-DESC
    The UnumID Logger SDK.
    DESC
    s.homepage     = "https://unumid.co"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright UnumID 2022
                  LICENSE
                }
    s.author             = { "$(git config user.name)" => "$(git config user.email)" }
    s.source       = { :git => "https://github.com/UnumID/UnumLogger-iOS-Distribution.git", :tag => "#{s.version}" }
    s.vendored_frameworks = "UnumLogger.xcframework"
    s.platform = :ios
    s.swift_version = "5.0"
    s.ios.deployment_target  = '13.0'
    s.dependency 'Zip', '~> 2.1'
    s.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }

end
