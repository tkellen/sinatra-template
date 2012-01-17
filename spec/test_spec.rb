require File.dirname(__FILE__)+'/helper.rb'

describe 'Test Case' do
  include Rack::Test::Methods
  it "should be true" do
    true.should == true
  end
end
