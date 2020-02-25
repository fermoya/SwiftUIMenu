Pod::Spec.new do |s|

  s.name         = "SwiftUIMenu"
  s.version      = "1.0.0"
  s.summary      = "Native component in SwiftUI to implement Menu Navigation Pattern. Easy to use, easy to customize."

  s.description  = <<-DESC
  SwiftUIMenu is a component that allows you to implement Menu Navigation Pattern in your App. `Menu` presents a content and a list of of options that's easily displayed by swiping or reacting to an external event such as a navbar button tap. 

  There's a bunch of view-modifiers available to give Menu your personal touch. Among others, you can change:
  - Reveal style
  - Reveal ratio
  - Position
  - Header
  - Footer
                   DESC

  s.homepage     = "https://medium.com/@fmdr.ct"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "fermoya" => "fmdr.ct@gmail.com" }

  s.platforms = { :ios => "13.0", :osx => "10.15", :watchos => "6.0" }
  s.swift_version = "5.1"

  s.source       = { :git => "https://github.com/fermoya/SwiftUIMenu.git", :tag => "#{s.version}-beta.1" }
  s.source_files  = "Sources/SwiftUIMenu/**/*.swift"

  s.xcconfig = { "SWIFT_VERSION" => "5.1" }
  s.documentation_url = "https://github.com/fermoya/SwiftUIMenu/blob/master/README.md"

end
