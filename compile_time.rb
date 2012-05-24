# run some code at compile time
#
class WidgetFactory
  def self.create!(klass)
    klass.class_eval do
      define_method :way_cool do
        3.times {puts "My name is..."}
        puts klass.name 
      end
    end
  end
end

module NamingAwesomeness

  def self.included(klass)
    WidgetFactory.create!(klass)
  end
end

#----- YOUR CODE BELOW ------

class CompileTime
  include NamingAwesomeness
end

CompileTime.new.way_cool
