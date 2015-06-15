module ClinicFinder
  class Configuration
    attr_accessor :api_token, :host

    def initialize
      @host = "http://clinic_finder.dev"
    end
  end
end
