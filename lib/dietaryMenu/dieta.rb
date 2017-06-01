class Dieta
    attr_reader :ingesta_diaria,:menus
	def initialize(ingesta_diaria, menus)
        @ingesta_diaria = ingesta_diaria
        @menus = menus
	end
end
