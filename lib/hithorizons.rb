# frozen_string_literal: true

require 'faraday'
require 'faraday_middleware'

require 'hithorizons/version'
require 'hithorizons/configuration'
require 'hithorizons/company'

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
