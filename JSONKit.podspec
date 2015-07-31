Pod::Spec.new do |s|
  s.name     = 'JSONKit'
  s.version  = '1.5pre'
  s.license  = 'BSD / Apache License, Version 2.0'
  s.summary  = 'A Very High Performance Objective-C JSON Library.'
  s.homepage = 'https://github.com/johnezang/JSONKit'
  s.author   = 'John Engelhart'
  s.source   = { :git => 'https://github.com/dvcs-appkode/JSONKit.git'}

  non_arc_files = 'JSONKit.m'
  s.requires_arc = true
  s.source_files = '*.{h,m}'
  s.exclude_files = non_arc_files
  s.subspec 'no-arc' do |sna|
      sna.requires_arc = false
      sna.source_files = non_arc_files
  end
end
