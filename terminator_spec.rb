require 'rspec'
require "./terminator"

describe GoodTerminator do
  it 'should protect_john_connor' do
    subject.protect_john_connor!
    subject.current_mission.should == 'protect: john_connor'
  end

  it 'should protect_sarah_connor' do
    subject.protect_sarah_connor!
    subject.current_mission.should == 'protect: sarah_connor'
  end

  describe '#protects?' do
    it 'should return true for john connor' do
      subject.protects?(:john_connor).should be_true
    end

    it 'should return true for sarah connor' do
      subject.protects?(:sarah_connor).should be_true
    end

    it 'should return false for random unknown person' do
      subject.protects?(:random_person).should be_false
    end
  end

  it 'should say terminator good if protecting someone' do
    subject.protect_john_connor!
    subject.should be_good
  end
end


describe BadTerminator do
  it 'should destroy_john_connor' do
    subject.destroy_john_connor!
    subject.current_mission.should == 'destroy: john_connor'
  end

  it 'should destroy_sarah_connor' do
    subject.destroy_sarah_connor!
    subject.current_mission.should == 'destroy: sarah_connor'
  end

  it 'should tell us terminator is bad if destroying someone' do
    subject.destroy_john_connor!
    subject.should_not be_good
  end
end
