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
            dependencies!
            view_and_helper_paths!
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
      
            def dependencies!
              %w(helpers controllers).each do |dir|
                ::ActiveSupport::Dependencies.load_paths << relative( dir )
              end 
            end
            
            def view_and_helper_paths!
              ::ActionController::Base.helpers_dir = relative( 'helpers' )
              ::ActionController::Base.view_paths = relative( 'views' )
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