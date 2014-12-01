require 'rails_helper'

RSpec.describe User, type: :model do
  describe "relacionamentos" do
    it { should belong_to :school }
  end

  describe "validações" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :role }

    describe "escola" do
      context "para admins" do
        subject { create(:admin) }

        it { should_not validate_presence_of :school }
      end

      context "para secretários" do
        subject { create(:secretary) }

        it { should validate_presence_of :school }
      end
    end
  end

  describe "roles" do
    it { expect(build(:admin)).to     be_admin }
    it { expect(build(:secretary)).to be_secretary }
  end
end
