Pod::Spec.new do |s|
  s.name         = "NTLevelMeterView"
  s.version      = "0.0.1"
  s.summary      = "Level meter view"
  s.description  = "Level meter view"
  s.homepage     = "https://github.com/naoty/NTLevelMeterView"
  s.license      = { type: "MIT", file: "LICENSE" }
  s.author       = { "Naoto Kaneko" => "naoty.k@gmail.com" }
  s.source       = { git: "https://github.com/naoty/NTLevelMeterView.git", tag: "#{s.version}" }
  s.source_files = "NTLevelMeterView/**/*.{h,m}"
  s.framework    = "QuartzCore"
  s.requires_arc = true
end
