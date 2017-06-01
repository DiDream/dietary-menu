class Menu
	include Comparable

	# titulo: almuerzo | cena | desayuno
    # vct: valance calorico total
	attr_reader :titulo, :porcentaje_diario, :platos, :vct, :proteinas, :grasas, :hidratos
	def initialize(info)
        @titulo = info[:titulo]
        @procentaje_diario = info[:procentaje_diario]
        @platos = info[:platos]
        @vct = info[:vct]
        @proteinas = info[:proteinas]
        @grasas = info[:grasas]
        @hidratos = info[:hidratos]
    end

	def [](index)
		@platos[index]
	end
	def <<(plato)
		@platos.push(plato)
		plato
	end
	def to_s
		description = "#{@titulo.upcase} (#{@porcentaje_diario}%)\n"
		description << @platos.map { |plato| "- #{plato}" }.join("\n")
		description << "\nV.C.T. | % #{vct} kcal | #{proteinas}% - #{grasas}% - #{hidratos}%"
		description
	end

	def <=>(other)
		return nil if (other.class != Menu)
		@vct <=> other.vct
	end

end
