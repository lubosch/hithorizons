# frozen_string_literal: true

module Hithorizons
  module Invoicing
    class Detail < BaseApi
      def self.get(country_code:, id:)
        process_request("/#{country_code}/Company/Detail", 'GET', { Id: id })
      end
    end
  end
end
