ruby-print-variable
===================

Description
===================
Add usefull method to inspect variable. 

The methods print variable with variable name & variable value.

Install
===================

    $ gem install print_variable

Usage
===================

    require 'pv'
    
    var = 1
    var2, var_foo, v = 2, 3, 4
    
    pv{:var}               #=> var = 1
    pv{%i(var2 var_foo v)} #=> var2    = 2
                           #   var_foo = 3
                           #   v       = 4

