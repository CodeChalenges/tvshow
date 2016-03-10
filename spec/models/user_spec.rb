require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:shows) }

  context "when validating" do
    let(:user){ build_stubbed(:user) }

    it{ expect(user).to validate_presence_of(:name) }
  end
end
