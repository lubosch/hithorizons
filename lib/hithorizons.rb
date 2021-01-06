# frozen_string_literal: true

require 'faraday'
require 'faraday_middleware'

require 'hithorizons/version'
require 'hithorizons/configuration'
require 'hithorizons/company'
require 'hithorizons/countries'
require 'hithorizons/company_types'
require 'hithorizons/industry_types'

module Hithorizons
  @configuration = Configuration.new

  def self.config
    @configuration
  end

  def self.configure
    yield(@configuration)
  end

  class Error < StandardError
  end
end
