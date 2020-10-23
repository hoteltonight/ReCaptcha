
Pod::Spec.new do |s|
  s.name             = 'ReCaptchaUI'
  s.version          = '1.5.0'
  s.summary          = 'ReCaptcha for iOS'
  s.swift_version    = '5.0'
  
  s.description      = <<-DESC
Add Google's [Invisible ReCaptcha](https://developers.google.com/recaptcha/docs/invisible) to your project. This library
automatically handles ReCaptcha's events and retrieves the validation token or notifies you to present the challenge if
invisibility is not possible.
                       DESC

  s.homepage          = 'https://github.com/fjcaetano/ReCaptcha'
  s.license           = { :type => 'MIT', :file => 'LICENSE' }
  s.author            = { 'Flávio Caetano' => 'flavio@vieiracaetano.com' }
  s.source            = { :git => 'https://github.com/hoteltonight/ReCaptcha.git', :tag => s.version.to_s }
  s.social_media_url  = 'https://twitter.com/flavio_caetano'
  s.documentation_url = 'http://fjcaetano.github.io/ReCaptcha'

  s.ios.deployment_target = '8.0'
  s.default_subspecs = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'ReCaptchaUI/Classes/*'
    core.frameworks = 'WebKit'

    core.resource_bundles = {
      'ReCaptcha' => ['ReCaptchaUI/Assets/**/*']
    }
  end

  s.subspec 'RxSwift' do |rx|
    rx.source_files = 'ReCaptchaUI/Classes/Rx/**/*'
    rx.dependency 'ReCaptcha/Core'
    rx.dependency 'RxSwift', '~> 5.0'
  end
end
