#require 'lib/prct06'

RSpec.describe Prct06 do
  it "has a version number" do
    expect(Prct06::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

    before :each do
	# name, fat, saturated fats, hydrates, sugar, protein, salt
	@test1 = Nutri.new("Salad", 5, 15, 34, 45, 67, 3)
	@test2 = Nutri.new("Coke", 500, 150, 4, 25, 45, 30)
    end
    
    it "Debe existir un nombre para la etiqueta." do
	expect(@test1.name).to eq("Salad")
	expect(@test2.name).to eq("Coke")
    end

    it "Debe existir la candidad de grasas." do
	expect(@test1.fat).to eq(5)
	expect(@test2.fat).to eq(500)
    end
    it "Debe existir la candidad de grasas saturadas." do
	expect(@test1.sfats).to eq(15)
	expect(@test2.sfats).to eq(150)
    end
    it "Debe existir la candidad de hidratos de carbono." do
   	expect(@test1.hydrates).to eq(34)
	expect(@test2.hydrates).to eq(4)
    end
    it "Debe existir la candidad de az ́ucares." do
	expect(@test1.sugar).to eq(45)
	expect(@test2. sugar).to eq(25)
    end
    it "Debe existir la candidad de prote ́ınas."do 
	expect(@test1.protein).to eq(67)
	expect(@test2.protein).to eq(45)
    end
    it "Debe existir la candidad de sal." do
	expect(@test1.salt).to eq(3)
	expect(@test2.salt).to eq(30)
    end
    it "Existe un m ́etodo para obtener el nombre." do
	expect(@test1.sname).to eq("Salad")
	expect(@test2.sname).to eq("Coke")
    end
    it "Existe un m ́etodo para obtener el valor energ ́etico." do
	expect(@test1.energy).to eq("1977 kJ/g y 467 kcal/g\n")
	expect(@test2.energy).to eq("20083 kJ/g y 4876 kcal/g\n")
	end
    it "Existe un m ́etodo para obtener la cantidad de grasas." do
	expect(@test1.sfat).to eq("5")
	expect(@test2.sfat).to eq("500")
    end
    it "Existe un m ́etodo para obtener la cantidad de grasas saturadas." do
	expect(@test1.ssfats).to eq("15")
	expect(@test2.ssfats).to eq("150")
    end
    it "Existe un m ́etodo para obtener la cantidad de hidratos de carbono." do
	expect(@test1.shydrates).to eq("34")
	expect(@test2.shydrates).to eq("4")
    end
    it "Existe un m ́etodo para obtener la cantidad de az ́ucares." do
	expect(@test1.ssugar).to eq("45")
	expect(@test2.ssugar).to eq("25")
    end
    it "Existe un m ́etodo para obtener la cantidad de prote ́ınas." do
	expect(@test1.sprotein).to eq("67")
	expect(@test2.sprotein).to eq("45")
    end
    it "Existe un m ́etodo para obtener la cantidad de sal." do
	expect(@test1.ssalt).to eq("3")
	expect(@test2.ssalt).to eq("30")
    end
    it "Existe un m ́etodo para obtener la etiqueta formateada." do
	expect(@test1.label).to eq("Name: \t\tSalad\nfat: \t\t5\nsat.fats: \t15\nhydrates: \t34\nsugar: \t\t45\nprotein: \t67\nsalt: \t\t3\n")
        expect(@test2.label).to eq("Name: \t\tCoke\nfat: \t\t500\nsat.fats: \t150\nhydrates: \t4\nsugar: \t\t25\nprotein: \t45\nsalt: \t\t30\n")
    end
end
