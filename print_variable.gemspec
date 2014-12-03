# coding: utf-8

Gem::Specification.new do |s|
  s.name = "print_variable"
  s.version = "0.0.1"
  s.summary = "Print variable with variable name & variable value."
  s.author = "diaphragm"
  s.files = Dir['lib/**/*']
  s.license = "Apache"
  s.homepage = "https://github.com/diaphragm/ruby-print-variable"
  s.description = <<-EOT
Add usefull method to inspect variable.

Example:
  require 'pv'

  var = 1
  var2, var_foo, v = 2, 3, 4

  pv{:var}               #=> var = 1
  pv{%i(var2 var_foo v)} #=> var2    = 2
                         #   var_foo = 3
                         #   v       = 4
	EOT
end

