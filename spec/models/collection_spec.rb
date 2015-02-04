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
      expect(subject.members).to eq [member1, member2, member3]
    end
  end

  it "should have edit_users" do
    subject.edit_users = ['frank', 'sarah']
    expect(subject.edit_users).to eq ['frank', 'sarah']
  end


  it "should have many permissions" do
    subject.permissions_attributes = [{ name: "public", access: "read", type: "group" }, { name: "joe_creator", access: "edit", type: "person" }, { name: "calvin_collaborator", access: "edit", type: "person" }]
    expect(subject.edit_users).to eq ["joe_creator","calvin_collaborator"]
    expect(subject.read_groups).to eq ["public"]
  end


  it "should have a title" do
    subject.title = "A Collection of Art"
    expect(subject.title).to eq "A Collection of Art"
  end

  it "should have a description" do
    subject.description = "some works I display"
    expect(subject.description).to eq "some works I display"
  end

end

