Gem::Specification.new do |s|
  s.name        = "paintbucket"
  s.version     = "0.0.1"
  s.author      = "Pete Brousalis"
  s.email       = "brousapg@gmail.com"
  s.summary     = "Small library for colorizing output"
  s.description = "Small library for colorizing output"
  s.homepage    = "http://github.com/brousalis/paintbucket/"

  s.files           = `git ls-files`.split($\)
  s.require_paths   = ['lib']
end
