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

  describe "#search" do
    before(:each) do
      ClinicFinder.configure do |config|
        config.api_token = "antidisestablishmentarianism"
      end
    end

    it "should return a parsed json array of clinics" do
      refute_empty(ClinicFinder.search("76134"))
    end

    it "should return an empty array when no clinics are found" do
      assert_empty(ClinicFinder.search("yo"))
    end
  end
end
