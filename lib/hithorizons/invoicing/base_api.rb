# frozen_string_literal: true

module Hithorizons
  module Invoicing
    class BaseApi < Hithorizons::BaseApi
      API_URL = '/invoicing'

      def self.api_key
        Hithorizons.config.invoicing_api_key
      end
    end
  end
end
