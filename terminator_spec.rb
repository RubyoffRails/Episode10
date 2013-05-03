require 'rspec'
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
    subject.protects?("sarah_connor").should eq(true)
  end

  it "should know if the Terminator is good" do
    subject.protect_sarah_connor!
    subject.good?.should be(true)
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

  it "should know if a Terminator wants to destroy a person" do
    subject.destroy_sarah_connor!
    subject.protects?("sarah_connor").should_not eq(true)
  end

  it "should know if the Terminator is not good" do
    subject.destroy_sarah_connor!
    subject.good?.should_not be(true)
  end

end
