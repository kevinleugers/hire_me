require 'rails_helper'

describe Job do
  context "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
  end
end
