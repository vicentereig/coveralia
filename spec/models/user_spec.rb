require 'spec_helper'

describe User, "created properly" do
  subject { FactoryGirl.create(:user) }
  its(:email) { should == 'vicente.reig@gmail.com' }
end
