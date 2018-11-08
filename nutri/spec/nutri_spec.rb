require 'lib/nutri'

##TDD desarrollo dirigido por pruebas
describe Nutri do
    before :each do
        nombre = "Bote de tomate frito"
        grasa = 37
        grasas_saturadas = 37
        hidratos = 17
        azucares = 90
        proteinas = 50
        sal = 6
        fibra = 8
        @etiqueta1 = Nutri.new(nombre, grasa, grasas_saturadas, hidratos, azucares, proteinas, sal, fibra)
        
        nombre = "Bote de judias rojas"
        grasa = 40
        grasas_saturadas = 30
        hidratos = 20
        azucares = 90
        proteinas = 70
        sal = 6
        fibra = 8
        @etiqueta2 = Nutri.new(nombre, grasa, grasas_saturadas, hidratos, azucares, proteinas, sal, fibra)
    end
    
    describe "Almacenamiento de las variables\n" do
        
        it "Existe un nombre para la etiqueta\n" do
            expect(@etiqueta1.nombre).to eq("Bote de tomate frito")
            expect(@etiqueta2.nombre).to eq("Bote de judias rojas")
        end
        
        it "Existe la cantidad de grasas\n" do
            expect(@etiqueta1.grasa).to eq(37)
            expect(@etiqueta2.grasa).to eq(40)
        end
        
        it "Existe la cantidad de grasas saturadas\n" do
            expect(@etiqueta1.grasas_saturadas).to eq(37)
        end
        
        it "Existe la cantidad de hidratos de carbono\n" do
            expect(@etiqueta1.hidratos).to eq(17)
        end
        
        it "Existe la cantidad de azúcares\n" do
            expect(@etiqueta1.azucares).to eq(90)
        end
        
        it "Existe la cantidad de proteinas\n" do
            expect(@etiqueta1.proteinas).to eq(50)
        end
        
        it "Existe la cantidad de sal\n" do
            expect(@etiqueta1.sal).to eq(6)
        end
        
        describe "Funcionamiento de los metodos\n" do
            
            it "Existe un metodo para obtener el nombre\n" do
            expect(@etiqueta1.nombre_to_s).to eq("Bote de tomate frito\n")
            end
            
            it "Existe un metodo para obtener el valor energetico\n" do
            expect(@etiqueta1.valor_energetico).to eq("2722.0 kJ/g y 653.0 kcal/g\n")
            end
            
            it "Existe un metodo para obtener la cantidad de grasas\n" do
            expect(@etiqueta1.grasa_to_s).to eq("37 kJ/g\n")
            end
            
            it "Existe un metodo para obtener la cantidad de grasas saturadas\n" do
            expect(@etiqueta1.grasas_saturadas_to_s).to eq("37 kJ/g\n")
            end
            
            it "Existe un metodo para obtener la cantidad de hidratos de carbono\n" do
            expect(@etiqueta1.hidratos_to_s).to eq("17 kJ/g\n")
            end
            
            it "Existe un metodo para obtener la cantidad de azúcares\n" do
            expect(@etiqueta1.azucares_to_s).to eq("90 g\n")
            end
            
            it "Existe un metodo para obtener la cantidad de proteinas\n" do
            expect(@etiqueta1.proteinas_to_s).to eq("50 g\n")
            end
            
            it "Existe un metodo para obtener la cantidad de sal\n" do
            expect(@etiqueta1.sal_to_s).to eq("6 g\n")
            end
            
            #it "Existe un metodo para obtener la etiqueta formateada\n" do

            #end
            
            
            
        end
        
        
        
    end
end