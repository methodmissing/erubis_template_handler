module Erubis
  module OutputBufferEnhancer

    def self.desc   # :nodoc:
      "set '@output_buffer = _buf = \"\";'"
    end

    def add_preamble(src)
      src << "__in_erubis_template=true; @output_buffer = _buf = '';"
    end

  end
end