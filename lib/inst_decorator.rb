# the concrete component we would like to decorate, a car in our example
class BasicInst
    def initialize(c, m, color)
        @cost = c
        @manufacturer = m
        @color = color
        @description = "basic inst"
    end
    
    # getter method
    def cost 
        return @cost
    end
    
    # a method which returns a string representation of the object of type BasicDrug
    def details
        return @description + "; " + @manufacturer + "; " + @color + ": " + "#{@cost}"
    end
    
    # getter method
    def color
        return @color
    end
    
    # getter method
    def manufacturer 
        return @manufacturer
    end
    
end # ends the BasicDrug class



# decorator class -- this serves as the superclass for all the concrete decorators
# the base/super class decorator (i.e. no actual decoration yet), each concrete decorator (i.e. subclass) will add its own decoration
class InstDecorator < BasicInst
    def initialize(basic_inst)
        #basic_inst is a real car, i.e. the component we want to decorate
        @basic_inst = basic_inst
        super(@basic_inst.cost, @basic_inst.manufacturer, @basic_inst.color)
        @extra_cost = 0
        @description = "no extra inst"
    end
    
    # override the cost method to include the cost of the extra feature	
    def cost        
        return @extra_cost + @basic_inst.cost
    end
    
    # override the details method to include the description of the extra feature
    def details
        return  @description + ": " + "#{@extra_cost}" + ". " + @basic_inst.details
    end
    
end # ends the CarDecorator class


# a concrete decorator --  define an extra feature


# another concrete decorator -- define an extra feature
class ElectricWindowsDecorator < InstDecorator
    def initialize(basic_inst)
        super(basic_inst)
        @extra_cost = 40
        @description = "windows"
    end
    
end

class Devise2Decorator < InstDecorator
    def initialize(basic_inst)
        super(basic_inst)
        @extra_cost = 50
        @description = "devise2"
    end
    
end