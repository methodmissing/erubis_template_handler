$:.unshift(File.dirname(__FILE__)) 

begin
  require 'action_controller'
rescue LoadError
  require 'rubygems'
  require 'action_controller'
  require 'action_view'
end  

begin
  require 'erubis'
rescue LoadError
  $stderr.puts %[This Template handler requires erubis 2.6.2\n
                 Add "config.gem 'erubis', :version => 2.6.2" to config/environment.rb]
end  

require 'output_buffer_enhancer'
require 'action_view/template_handlers/erubis'