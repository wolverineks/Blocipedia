require 'rails_helper'

RSpec.describe Wiki, type: :model do
  
  describe "CRUD methods" do

    before do
      @wikis = Wiki.all
      3.times { Wiki.create }
    end

    describe "#create" do
      it "adds a new wiki to All Wikis" do
        @wiki = Wiki.create
        expect( @wikis.length ).to eq(4)
      end
    end

    describe "#destroy" do
      it "removes a wiki from All Wikis" do
        @wiki = Wiki.last
        @wiki.destroy
        expect( @wikis.length ).to eq(2)
      end
    end

  end
end
