require 'rails_helper'

RSpec.describe School, type: :model do
  describe "validações" do
    it { should validate_presence_of :doc }
    it { should validate_presence_of :name }
  end
end
