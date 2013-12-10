require 'spec_helper'

describe Hydra::Admin::Collection do
  before do
    class GenericFile < ActiveFedora::Base
      belongs_to_admin_collection
    end
  end

  after do
    Object.send(:remove_const, :GenericFile)
  end

  it "should have members attribute" do
    expect(subject.members).to eq []
  end

  describe "with many members" do
    before {subject.save!}
    after {subject.destroy}
    let!(:member1) { GenericFile.create!(collection: subject) }
    let!(:member2) { GenericFile.create!(collection: subject) }
    let!(:member3) { GenericFile.create!(collection: subject) }

    it "should hold many members" do
      subject.members.should == [member1, member2, member3]
    end
  end

  it "should have edit_users" do
    subject.edit_users = ['frank', 'sarah']
    expect(subject.edit_users).to eq ['frank', 'sarah']
  end

  it "should have defaultRights" do
    subject.defaultRights.permissions = {"person"=>{"maria"=>"read","marcus"=>"discover"}, "group" => {"registered" => 'read'}}
    subject.defaultRights.individuals.should == {"maria"=>"read","marcus"=>"discover"}
  end


  it "should have a name" do
    subject.name = "A Collection of Art"
    expect(subject.name).to eq "A Collection of Art"
  end

  it "should have a description" do
    subject.description = "some works I display"
    expect(subject.description).to eq "some works I display"
  end

  it "should have a publisher" do
    subject.publisher = "Kelvin Smith Library, Cleveland, Ohio"
    expect(subject.publisher).to eq "Kelvin Smith Library, Cleveland, Ohio"
  end

  it "should have a type" do
    subject.type = "multimedia"
    expect(subject.type).to eq "multimedia"
  end

  it "should have a language" do
    subject.language = "eng"
    expect(subject.language).to eq "eng"
  end

  it "should have a coverage" do
    subject.coverage = "Cleveland, Ohio"
    expect(subject.coverage).to eq "Cleveland, Ohio"
  end

  it "should have creators" do
    subject.creators = ['frank', 'sarah']
    expect(subject.creators).to eq ['frank', 'sarah']
  end

end

