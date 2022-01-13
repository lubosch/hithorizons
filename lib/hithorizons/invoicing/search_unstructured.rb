# frozen_string_literal: true

module Hithorizons
  module Invoicing
    class SearchUnstructured < BaseApi
      def self.get(country_code:, ids: nil, name: nil, address: nil, max_results: nil)
        payload = { Ids: ids, Name: name, Address: address, MaxResults: max_results }
        process_request("/#{country_code}/Company/SearchUnstructured", 'GET', payload.compact)
      end
    end
  end
end
