require 'json'
require 'faraday'
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

  def self.connection
    @connection ||= Faraday.new(url: configuration.host)
  end

  def self.search(zip_code)
    res = connection.get do |req|
      req.url "/clinics", zip_code: zip_code
      req.headers['X-Auth-Token'] = configuration.api_token
    end
    JSON.parse(res.body)
  end

end
