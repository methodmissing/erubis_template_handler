require 'init'

RAILS_ROOT = '' unless Object.const_defined?('RAILS_ROOT')

module ActionView
  module TemplateHandlers
    module Test
      class Erubis
        class << self
      
          def setup!
            dependencies!
            routing!
            logger!
            view_paths!
            controller!
          end
          
          private
          
            def dependencies!
              require 'action_controller/test_process'
              require 'test_help'
            end
          
            def routing!
              ::ActionController::Routing::Routes.draw do |map|
                map.connect ':controller/:action/:id'
                map.connect ':controller/:action/:id.:format'
              end  
            end
      
            def logger!
              ::ActionController::Base.logger = Logger.new( STDOUT )
            end
            
            def view_paths!
              ::ActionController::Base.view_paths = relative( 'views' )
            end
            
            def controller!
              require relative( 'controllers', 'products_controller' )
            end
      
            def relative( *path )
              File.join( File.dirname(__FILE__), *path )
            end
      
        end
      end
    end
  end
end

ActionView::TemplateHandlers::Test::Erubis.setup!