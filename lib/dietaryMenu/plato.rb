class Plato
	attr_reader :descripcion, :porcion, :gramos
	def initialize info
        @descripcion = info[:descripcion]
        @porcion = info[:porcion]
        @gramos = info[:gramos]
	end

	# Dos objectos de la clase Plato sera iguales si lo son sus atributos
	def == (otro)
		self.class == otro.class && @descripcion ==otro.descripcion && @porcion == otro.porcion && @gramos == otro.gramos
	end

	def to_s
		"#{@descripcion}, #{@porcion}, #{@gramos} gramos"
	end

end
