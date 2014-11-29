require 'rails_helper'

RSpec.describe School, type: :model do
  describe "validações" do
    it { should validate_presence_of :doc }
    it { should validate_presence_of :name }

    context "cnpj" do
      it { expect(build(:school, doc: '87.532.378/0001-14')).to     be_valid }
      it { expect(build(:school, doc: '48.284.894/0001-48')).to_not be_valid }
    end
  end
end
