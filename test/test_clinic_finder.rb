require_relative './minitest_helper'

class TestClinicFinder < Minitest::Spec
  it "should have a version number" do
    refute_nil ::ClinicFinder::VERSION
  end

  describe "#configure" do
    it "should let you set the configuration" do
      ClinicFinder.configure do |config|
        config.api_token = "whatever"
      end
      assert_equal("whatever", ClinicFinder.configuration.api_token)
    end
  end
end
