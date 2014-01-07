 # add a method at run time
class SuperWo

def initialize(name)
  @name = name
end

 def add_method_to_instance
  instance_eval do
    def cool!
      puts "oh hello"
    end
  end
 end

#this is not being add to the entire class,
#instance only available to the methd.   
 def add_method_to_class
   self.class.class_eval do
     define_method :cool! do
       puts "hello, world"  
      end
    end
  end 

  def add_some_code_to_class(the_name, &block)
    self.class.class_eval do  #powering the meta 
      define_method the_name, &block
    end
  end

end

=begin
x = SuperWo.new
x.add_method_to_class
x.cool!

y = SuperWo.new
y.cool!
=end

third_wo = SuperWo.new("blue bell")
third_wo.add_some_code_to_class :wow_wow do
  puts "#{@name} I am wow"
end
third_wo.wow_wow

# able to access intance methods in the class

