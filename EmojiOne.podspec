Pod::Spec.new do |s|
    s.name = 'EmojiOne'
    s.version = '2.0.0'
    s.summary = 'EmojiOne - A library for using EmojiOne icons'
    s.description = 'EmojiOne library helps you use icons from EmojiOne. EmojiOne 3.1 contains over 2,666 stunning emoji icons in total.'

    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.authors = { 'Saurabh Rane' => 'saurabhrrane@gmail.com' }
    s.social_media_url = 'https://github.com/ranesr'
    s.homepage = 'https://github.com/ranesr/EmojiOne'

    s.source = { :git => 'https://github.com/ranesr/EmojiOne.git', :tag => s.version }
    s.ios.deployment_target = '8.0'
    s.source_files   = 'Sources/EmojiOne.swift'

end
