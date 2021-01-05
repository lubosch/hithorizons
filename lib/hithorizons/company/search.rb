# frozen_string_literal: true

module Hithorizons
  module Company
    class Search < BaseApi
      def self.get(duns_number: nil, company_name: nil, national_id: nil, address_unstructured: nil, address_street: nil,
                   city: nil, state_province: nil, country: nil, show_branches: nil, company_types: nil, max_results: nil)
        payload = {
          DUNSNumber: duns_number, CompanyName: company_name, NationalId: national_id, AddressUnstructured: address_unstructured,
          AddressStreet: address_street, City: city, StateProvince: state_province, Country: country, ShowBranches: show_branches,
          CompanyTypes: company_types, MaxResults: max_results
        }
        process_request('/Search', 'GET', payload.compact)
      end
    end
  end
end
