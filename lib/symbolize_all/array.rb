module SymbolizeAll

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