# require 'lib/prct06'
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
=begin
    it "Existe un m ́etodo para obtener el nombre." do
	expect(test1.sname).to eq("Salad\n")
	expect(test2.sname).to eq("Coke\n")

end
    it "Existe un m ́etodo para obtener el valor energ ́etico." do
	expect(test1.name).to eq("Salad")
	expect(test2.name).to eq("Coke")

end
    it "Existe un m ́etodo para obtener la cantidad de grasas." do
	expect(test1.name).to eq("Salad")
	expect(test2.name).to eq("Coke")

end
    it "Existe un m ́etodo para obtener la cantidad de grasas saturadas." do
	expect(test1.name).to eq("Salad")
	expect(test2.name).to eq("Coke")

end
    it "Existe un m ́etodo para obtener la cantidad de hidratos de carbono." do
	expect(test1.name).to eq("Salad")
	expect(test2.name).to eq("Coke")

end
    it "Existe un m ́etodo para obtener la cantidad de az ́ucares." do
	expect(test1.name).to eq("Salad")
	expect(test2.name).to eq("Coke")

end
    it "Existe un m ́etodo para obtener la cantidad de prote ́ınas." do
	expect(test1.name).to eq("Salad")
	expect(test2.name).to eq("Coke")

end
    it "Existe un m ́etodo para obtener la cantidad de sal." do
	expect(test1.name).to eq("Salad")
	expect(test2.name).to eq("Coke")

end
    it "Existe un m ́etodo para obtener la etiqueta formateada." do
	expect(test1.name).to eq("Salad")
	expect(test2.name).to eq("Coke")

end
=end
end
