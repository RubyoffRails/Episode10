require 'rspec'
require "./terminator"

describe Terminator do
  it "should destroy_john_connor" do
    subject.destroy_john_connor!
    subject.current_mission.should eq("destroy: john_connor")
  end

  it "should protect_john_connor" do
    subject.protect_john_connor!
    subject.current_mission.should eq("protect: john_connor")
  end
  it "should destroy_sarah_connor" do
    subject.destroy_sarah_connor!
    subject.current_mission.should eq("destroy: sarah_connor")
  end

  it "should protect_sarah_connor" do
    subject.protect_sarah_connor!
    subject.current_mission.should eq("protect: sarah_connor")
  end

  describe "#protects?" do
    it "should return true when protecting Sarah Connor" do
      subject.protect_sarah_connor!
      subject.protects?(:sarah_connor).should be_true
    end
    it "should return false when destroying Sarah Connor" do
      subject.destroy_sarah_connor!
      subject.protects?(:sarah_connor).should be_false
    end
  end
end
