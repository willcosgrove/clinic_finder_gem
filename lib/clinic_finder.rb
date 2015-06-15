require 'clinic_finder/configuration'
require 'clinic_finder/version'

module ClinicFinder
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield configuration
  end

end
