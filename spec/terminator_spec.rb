
require 'rspec'
require 'rake'
require "./terminator"


  describe GoodTerminator do
    it "should protect_john_connor" do
        subject.protect_john_connor!
        subject.current_mission.should eq("protect: john_connor")
      end

    it "should protect_sarah_connor" do
        subject.protect_sarah_connor!
        subject.current_mission.should eq("protect: sarah_connor")
    end

    it "should know if the Terminator protects a person" do
        subject.protect_sarah_connor!
        subject.protect?("sarah_connor").should eq(true)
    end

    it "should know if the Terminator is good" do
        subject.protect_sarah_connor!
        subject.good?.should eq(true)
    end
  end


  describe BadTerminator do
    it "should destroy_john_connor" do
        subject.destroy_john_connor!
        subject.current_mission.should eq("destroy: john_connor")
    end 

    it "should destroy_sarah_connor" do
        subject.destroy_sarah_connor!
        subject.current_mission.should eq("destroy: sarah_connor")
    end 

    it "should know if the Terminator destroys a person" do
        subject.destroy_sarah_connor!
        subject.protect?("sarah_connor").should eq(false)
    end 

    it "should know if the Terminator is bad" do
        subject.destroy_sarah_connor!
        subject.good?.should eq(false)
    end
  end

  

  


  
  

  




