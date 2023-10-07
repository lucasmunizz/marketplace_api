require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user) }

  subject { user }

  describe 'when respond to email, password, etc' do
    it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }
    it { should respond_to(:email) }
    it { should respond_to(:password) }
    it { should respond_to(:password_confirmation) }
  end
end
