require 'test/unit'
require 'lib/file'

#Unit Tests
class TestNutrition < Test::Unit::TestCase
    
    def setup
	@rob = Nutrition.new("Robin", "Steiger", 1, 23, 1.9, 73, [0.5, 0.7], [0.4, 0.8], [0.4, 0.5, 0.6], [0.9, 0.7, 0.5], [0.5, 0.6, 0.8], [0.9, 0.8, 0.5], [0.5, 0.9])
	@julian = Nutrition.new("Julian", "Herrdum", 1, 30, 1.9, 70, [0.3, 0.5], [0.8, 0.4], [0.2, 0.4, 0.8], [0.9, 0.5, 0.1], [0.2, 0.6, 0.5], [0.4, 0.5, 0.6], [0.9, 0.8])
    end
  
    def test1
        assert_equal("Name: Robin\n", @rob.print_name)
        assert_equal("Surname: Steiger\n", @rob.print_surname)
        assert_equal("Age: 23\n", @rob.print_age)
        assert_equal("Sex: 1\n", @rob.print_sex)
        assert_equal("Weight: 73\n", @rob.print_weight)
        assert_equal("Height: 1.9\n", @rob.print_height)
        assert_equal(20.22, @rob.imc)

        assert_equal("Name: Julian\n", @julian.print_name)
        assert_equal("Surname: Herrdum\n", @julian.print_surname)
        assert_equal("Age: 30\n", @julian.print_age)
        assert_equal("Sex: 1\n", @julian.print_sex)
        assert_equal("Weight: 70\n", @julian.print_weight)
        assert_equal("Height: 1.9\n", @julian.print_height)
	assert_equal(19.39, @julian.imc)

    end
    
    def test2
        assert_equal(0.5, @rob.print_triceps)
        assert_equal(0.7, @rob.print_biceps)
        assert_equal(0.63, @rob.print_subscapular)
        assert_equal(0.73, @rob.print_suprailiac)
        assert_equal(0.6, @rob.print_waist)
        assert_equal(0.6, @rob.print_hip)
        assert_equal(0.7, @rob.print_arm)

        assert_equal(0.47, @julian.print_triceps)
        assert_equal(0.5, @julian.print_biceps)
        assert_equal(0.43, @julian.print_subscapular)
        assert_equal(0.5, @julian.print_suprailiac)
        assert_equal(0.4, @julian.print_waist)
        assert_equal(0.6, @julian.print_hip)
        assert_equal(0.85, @julian.print_arm)
    end
 
end
