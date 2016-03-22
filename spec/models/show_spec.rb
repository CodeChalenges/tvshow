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

  context 'validate site' do
    it { should     allow_value('http://www.google.com/').for(:site) }
    it { should     allow_value('www.google.com').for(:site) }
    it { should     allow_value('google.com').for(:site) }
    it { should     allow_value('d2.google.com').for(:site) }
    it { should     allow_value('d1.d2.google.com').for(:site) }
    it { should     allow_value('d1.d2.google.com/path1').for(:site) }
    it { should     allow_value('d1.d2.google.com/path1/path2/path3').for(:site) }
    it { should_not allow_value('foobar').for(:site) }
  end
end
