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
    it 'should return true for john_connor' do
      subject.protects?(:john_connor).should be_true
    end

    it 'should return true for sarah_connor' do
      subject.protects?(:sarah_connor).should be_true
    end

    it 'should return false for random unknown person' do
      subject.protects?(:random_person).should be_false
    end
  end

  it 'should tell us terminator is bad if destroying someone' do
    subject.destroy_john_connor!
    #subject.good?.should be_false
    subject.should_not be_good
  end

  it 'should tell us terminator is good if protecting someone' do
    subject.protect_sarah_connor!
    #subject.good?.should be_true
    subject.should be_good
  end
end
