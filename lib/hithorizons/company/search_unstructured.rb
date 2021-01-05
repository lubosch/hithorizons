# frozen_string_literal: true

module Hithorizons
  module Company
    class SearchUnstructured < BaseApi
      def self.get(ids: nil, name: nil, address: nil, show_branches: nil, company_types: nil, max_results: nil)
        payload = {
          Ids: ids, Name: name, Address: address, ShowBranches: show_branches,
          CompanyTypes: company_types, MaxResults: max_results
        }
        process_request('/SearchUnstructured', 'GET', payload.compact)
      end
    end
  end
end
