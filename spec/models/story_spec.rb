require 'spec_helper'

RSpec.describe Story do

  describe "New story is created" do
    it "can be made with a name and theme" do
      story = Story.create!(name: "This one is different", theme: "uniqueness")
      expect(story.name).to eq("This one is different")
      expect(story.theme).to eq("uniqueness")
    end

    it "can have many narrations from different users" do
      user1 = User.create!(email: "Joe@joe.com", password: "123xyz!")
      user2 = User.create!(email: "Bob@bob.com", password: "987abc?")
      story = Story.create!(name: "The winding path", theme: "confusion")
      narration1 = Narration.create!(body: "I walk down the lonesome road.", user_id: user1.id, story_id: story.id)
      narration2 = Narration.create!(body: "I look around to make sure no one is watching.", user_id: user2.id, story_id: story.id)
      expect(story.narrations).to eq([narration1, narration2])
    end
  end
end
