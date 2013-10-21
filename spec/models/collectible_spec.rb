require 'spec_helper'

describe "A model belonging to an admin collection" do
  before do
    class GenericFile < ActiveFedora::Base
      belongs_to_admin_collection
    end
  end

  after do
    Object.send(:remove_const, :GenericFile)
  end

  subject { GenericFile.new }

  it "should have collection attribute" do
    expect(subject.collection).to be_nil
  end

  describe "setting the collection" do
    let(:collection) { Hydra::Admin::Collection.create }
    before do
      subject.collection = collection
    end
    it "should set the collection" do
      expect(subject.collection).to eq collection
    end
  end
end
