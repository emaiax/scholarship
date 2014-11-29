require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validações" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :role }
  end

  describe "roles" do
    it { expect(build(:user, role: :admin)).to     be_admin }
    it { expect(build(:user, role: :secretary)).to be_secretary }
  end
end
