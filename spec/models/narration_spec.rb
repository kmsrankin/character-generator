require 'spec_helper'

RSpec.describe Narration do

  describe "New narration is created" do
    it "can be made with a body" do
      user = User.create!(email: "Joe@joe.com", password: "123xyz!")
      story = Story.create!(name: "The winding path", theme: "confusion")
      narration = Narration.create!(body: "I walk down the lonesome road.", user_id: user.id, story_id: story.id)
      expect(narration.body).to eq("I walk down the lonesome road.")
    end

    it "belongs to a story and user" do
      user = User.create!(email: "Joe@joe.com", password: "123xyz!")
      story = Story.create!(name: "The winding path", theme: "confusion")
      narration = Narration.create!(body: "I walk down the lonesome road.", user_id: user.id, story_id: story.id)
      expect(narration.story).to eq(story)
      expect(narration.user).to eq(user)
    end
  end
end
