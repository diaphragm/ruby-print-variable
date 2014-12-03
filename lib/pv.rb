# coding: utf-8

##
# Print variable with variable name & variable value.
# 
##
# == Usage
# 
#   var = 1
#   var2, var_foo, v = 2, 3, 4
#   
#   pv{:var}               #=> var = 1
#   pv{%i(var2 var_foo v)} #=> var2    = 2
#                          #   var_foo = 3
#                          #   v       = 4
# 
def pv(&block)
  ret = block.call

  symbols = if ret.is_a?(Symbol)
    [ret]
  elsif ret.is_a?(Array) and ret.all?{|x| x.is_a?(Symbol)}
    ret
  else
    raise "Given block must return Symbol or Array only includes Symbol"
  end

  varname_length = symbols.map{|symbol| symbol.to_s.length}.max
  
  symbols.each do |symbol|
    puts "#{symbol.to_s.ljust(varname_length)} = #{block.binding.eval(symbol.to_s)}"
  end

  ret
end
