require './spec_helper'
require "./terminator"

describe BadTerminator do
  it "should destroy_john_connor" do
    subject.destroy_john_connor!
    subject.current_mission.should eq("destroy: john_connor")
  end

  it "should destroy_sarah_connor" do
    subject.destroy_sarah_connor!
    subject.current_mission.should eq("destroy: sarah_connor")
  end

    it 'should not protect john' do
    expect(subject.protects?('John Connor')).to be_false
  end

  it 'should not protect Sarah' do
    expect(subject.protects?('Sarah Connor')).to be_false
  end

  it 'should not protect Bob' do
    expect(subject.protects?('Bob')).to be_false
    puts 'poor bob'
  end

  it 'should not be good if it is trying to destory someone' do
    subject.destroy_sarah_connor!
    expect(subject.good?).to be_false
  end

end

describe GoodTerminator do
  it "should protect_john_connor" do
    subject.protect_john_connor!
    subject.current_mission.should eq("protect: john_connor")
  end


  it "should protect_sarah_connor" do
    subject.protect_sarah_connor!
    subject.current_mission.should eq("protect: sarah_connor")
  end

  it 'should protect john' do
    expect(subject.protects?('John Connor')).to be_true
  end

  it 'should protect Sarah' do
    expect(subject.protects?('Sarah Connor')).to be_true
  end

  it 'should not protect Bob' do
    expect(subject.protects?('Bob')).to be_false
    puts 'poor bob'
  end

  it 'should be good if it is not trying to destory someone' do
    subject.protect_sarah_connor!
    expect(subject.good?).to be_true
  end
end
