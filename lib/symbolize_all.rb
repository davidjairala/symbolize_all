require "symbolize_all/version"

module SymbolizeAll
  
  module Hash

    def symbolize_all
      symbolized = {}

      each do |key, val|
        new_key = key.is_a?(String) ? key.to_sym : key

        case val.class.to_s
        when 'String'
          symbolized[new_key] = val.to_sym
        when 'Array', 'Hash'
          symbolized[new_key] = val.symbolize_all
        else
          symbolized[new_key] = val
        end
      end

      symbolized
    end

  end

  module Array

    def symbolize_all
      self.map do |val|
        case val.class.to_s
        when 'String'
          val.to_sym
        when 'Array', 'Hash'
          val.symbolize_all
        else
          val
        end
      end
    end

  end

end

Array.send  :include, SymbolizeAll::Array
Hash.send   :include, SymbolizeAll::Hash