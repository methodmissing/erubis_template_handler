require 'output_buffer_enhancer'

module ActionView
  module TemplateHandlers
    class EnhancedEruby < Erubis::FastEruby
      include ::Erubis::PercentLineEnhancer
      include ::Erubis::DeleteIndentEnhancer
      include ::Erubis::OutputBufferEnhancer
    end
    
    class Erubis < TemplateHandler
      include Compilable  
        
      def self.install!
        ActionView::Template.register_default_template_handler :erb, self          
      end
        
      def compile(template)  
        options = {}    
        EnhancedEruby.new("<% __in_erb_template=true %>#{template.source}", options).src
      end

    end
  end
end

ActionView::TemplateHandlers::Erubis.install!