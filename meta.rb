# add a method at run time
class SuperWo

  def initialize(name)
    @name = name
  end

  def add_method_to_instance
    instance_eval do
      def cool!
        puts "oh hai, I am the cool"
      end
    end 
  end

  def add_method_to_class
    self.class.class_eval do
      define_method :cool! do
        puts "oh hai, I am the cool"
      end
    end
  end

  def add_some_code_to_class(the_name, &block)
    self.class.class_eval do
      define_method the_name, block
    end
  end

end

wo = SuperWo.new("first")
wo.add_method_to_instance
wo.cool!

second_wo = SuperWo.new("second")
second_wo.add_method_to_instance
second_wo.cool!


third_wo = SuperWo.new("blue bell")
third_wo.add_some_code_to_class :wow_wow do
  puts "#{@name} I am wow"
end
third_wo.wow_wow
