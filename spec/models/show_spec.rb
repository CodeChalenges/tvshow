require 'rails_helper'

RSpec.describe Show, type: :model do
  it { should belong_to(:user) }

  context "when validating" do
    let(:show){ build_stubbed(:show) }

    it{ expect(show).to validate_presence_of(:name) }
    it{ expect(show).to validate_presence_of(:schedule) }
    it{ expect(show).to validate_presence_of(:user) }
    it{ expect(show).to belong_to(:user) }
  end
end
