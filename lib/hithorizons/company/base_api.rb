# frozen_string_literal: true

module Hithorizons
  module Company
    class BaseApi < Hithorizons::BaseApi
      API_URL = '/Company'

      def self.api_key
        Hithorizons.config.api_key
      end
    end
  end
end
