require "spec_helper"

RSpec.describe DietaryMenu do
  it "has a version number" do
    expect(DietaryMenu::VERSION).not_to be nil
  end
end
RSpec.describe DLL do
    before :all do
        @dll = DLL.new(1,2,3,4,5)
    end
    it "Es una lista doblemente enlazada. Sus nodos tienen :next y :prev" do
        expect(@dll.head).to respond_to(:next, :prev)
    end
    it "Correcta inserción de valores" do
        arr =[1,2,3,4,5]
        i = 0
        @dll.each do |node|
            expect(node.value).to be(arr[i])
            i+=1
        end
    end
end
RSpec.describe Plato do
    before :all do
        @plato = Plato.new({
            descripcion: 'Macarrones con salsa de tomate y queso parmesano',
            porcion: '1 1/2 cucharon',
            gramos: 200
            })
    end
    it "Debe existir la descripcion de un plato" do
        expect(@plato).to respond_to(:descripcion)
    end
    it "Debe existir la porcion de un plato" do
        expect(@plato).to respond_to(:porcion)
    end
    it "Debe existir la ingesta de gramos" do
        expect(@plato).to respond_to(:gramos)
    end
end
RSpec.describe Menu do
    before :all do
        platos = DLL.new(
            Plato.new({
                descripcion: 'Macarrones con salsa de tomate y queso parmesano',
                porcion: '1 1/2 cucharon',
                gramos: 200
            }),
            Plato.new({
                descripcion: 'Escalope de ternera',
                porcion: '1 bistec mediano',
                gramos: 100
            }),
            Plato.new({
                descripcion: 'Ensalada basica con zanahoria rallada',
                porcion: 'guarnicion de 120 g',
                gramos: 120
            }),
            Plato.new({
                descripcion: 'Mandarina',
                porcion: '1 grande',
                gramos: 180
            }),
            Plato.new({
                descripcion: 'Pan de trigo integral',
                porcion: '1 rodaja',
                gramos: 20
            })

        )
        @menu = Menu.new({
            titulo: 'Almuerzo',
            porcentaje_diario: '30 - 35%',
            platos: platos,
            vct: 785.9,
            proteinas: 19,
            grasas: 34,
            hidratos: 47
            })
    end
    it "Debe existir un conjunto de platos" do
        expect(@menu).to be_instance_of(Menu)
    end
    it "Obtener un plato del menu" do
        expect(@menu[0]).to be_instance_of(Plato)
    end
end
RSpec.describe Dieta do
    before :all do
        @dieta = Dieta.new(3200, 4)
    end
    it "La dieta tiene un valor de ingesta diaria recomendada" do
        expect(@dieta).to respond_to(:ingesta_diaria)
    end

end
