require 'rails_helper'

RSpec.describe ShowsController, type: :controller do
  context "GET#index" do
    # PS: Newer user created first to ensure that ordering is being performed as expected
    let!(:newer_user)    {create(:user_with_shows, created_at: Date.today)}
    let!(:older_user)    {create(:user_with_shows, created_at: Date.yesterday)}
    let!(:expected_json) {JSON.parse([older_user.shows.last, newer_user.shows.last].to_json)}

    before { get :index }

    it 'return last show of each user' do
      expect(json).to match(expected_json)
    end
  end
end
