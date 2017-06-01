require_relative './dll'
require_relative './plato'
require_relative './menu'

class Edades < Menu
    attr_reader :rango
    def initialize(rango, menu_info)
        @rango = rango
        super(menu_info)
    end
    def to_s
        "#{@rango}\n#{super.to_s}"
    end
end
