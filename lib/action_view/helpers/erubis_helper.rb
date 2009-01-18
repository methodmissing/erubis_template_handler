module ActionView
  module Helpers
    module ErubisHelper
      
      def capture(*args, &block)
        if block_called_from_erb?(block)
          with_output_buffer { block.call(*args) }
        elsif block_called_from_erubis?(block)
          # Thanks Mack
          buffer = eval( "@output_buffer", block.binding, __FILE__, __LINE__) rescue nil 
          if buffer.nil?
            block.call(*args)
          else
            pos = buffer.length
            block.call(*args)
            result = buffer[pos..-1]
            buffer[pos..-1] = ''
            result
          end  
        else
          with_output_buffer { return block.call(*args) }
        end
      end
      
      private
      BLOCK_CALLED_FROM_ERUBIS = 'defined? __in_erubis_template'

      if RUBY_VERSION < '1.9.0'
        def block_called_from_erubis?(block)
          block && eval(BLOCK_CALLED_FROM_ERUBIS, block)
        end
      else
        def block_called_from_erubis?(block)
          block && eval(BLOCK_CALLED_FROM_ERUBIS, block.binding)
        end
      end      
      
    end
  end
end

module ActionView
  class Base
    include ActionView::Helpers::ErubisHelper
  end
end