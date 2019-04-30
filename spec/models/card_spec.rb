require 'spec_helper'

RSpec.describe Card do

  describe "New card is created" do
    it "can be made with a name and description" do
      card = Card.create!(name: "Banana Guard", flavor_text: "Princess! What do we do?")

      expect(card.name).to eq("Banana Guard")
      expect(card.flavor_text).to eq("Princess! What do we do?")
    end
  end
end
