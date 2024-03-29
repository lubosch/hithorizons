# frozen_string_literal: true

module Hithorizons
  class Configuration
    attr_accessor :invoicing_api_key, :api_key, :api_url

    def initialize
      @api_key = ENV['HITHORIZONS_API_KEY']
      @invoicing_api_key = ENV['HITHORIZONS_INVOICING_API_KEY']
      @api_url = 'https://api.hithorizons.com'
    end
  end
end
