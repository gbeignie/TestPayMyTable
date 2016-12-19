platform :ios, :deployment_target => '8.0'
xcodeproj 'TestPayMyTable.xcodeproj'

inhibit_all_warnings!

target 'TestPayMyTable' do
    
    source 'https://github.com/CocoaPods/Specs.git'
    platform :ios, '8.0'
    use_frameworks!

    pod 'AlamofireImage', '~> 2.0'


end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '2.3'
        end
    end
end
