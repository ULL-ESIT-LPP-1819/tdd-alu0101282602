class Nutri
    
    #getters
    attr_reader :nombre, :grasa , :grasas_saturadas, :hidratos, :azucares, :proteinas, :sal, :fibra
    #setters
    attr_writer :nombre, :grasa , :grasas_saturadas, :hidratos, :azucares, :proteinas, :sal, :fibra
    
    #Definicion de variables
    def initialize(nombre, grasa, grasas_saturadas, hidratos, azucares, proteinas, sal, fibra)
        @nombre, @grasa, @grasas_saturadas, @hidratos, @azucares, @proteinas, @sal, @fibra = nombre, grasa, grasas_saturadas, hidratos, azucares, proteinas, sal, fibra
    end
    
    #Metodos de instancia
    def nombre_to_s
        "#{@nombre}\n"
    end
    
    def grasa_to_s
        "#{@grasa} kJ/g\n"
    end
    
    def grasas_saturadas_to_s
        "#{@grasas_saturadas} kJ/g\n"
    end 
    
    def hidratos_to_s
        "#{@hidratos} kJ/g\n"
    end
    
    def azucares_to_s
        "#{@azucares} g\n"
    end
    
    def proteinas_to_s
        "#{@proteinas} g\n"
    end
    
    def sal_to_s
        "#{@sal} g\n"
    end
    
    def valor_energetico
      v1 = [@grasa, @hidratos, @proteinas, @sal, @fibra]
      v2 = [37, 17, 17, 25, 8]#Conversion en kJ/g
      v3 = [9, 4, 4, 6, 2]#Conversion en kcal/g
       
        s1 = 0
        s2 = 0
        i = 0
        while (i < v1.length)
            s1 += v1[i] * v2[i]
            s2 += v1[i] * v3[i]
            i += 1
        end
        return "#{s1.round(2)} kJ/g y #{s2.round(2)} kcal/g\n"
    end
    
   
    
end
    