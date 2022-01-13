# frozen_string_literal: true

module Hithorizons
  module Invoicing
    class Search < BaseApi
      def self.get(country_code:,
                   company_name: nil, national_id: nil, tax_id: nil, vat_id: nil, address_unstructured: nil, address_street: nil,
                   street_number: nil, locality: nil, district: nil, region: nil, postal_code: nil, city: nil, country: nil,
                   max_results: nil)
        payload = {
          CompanyName: company_name, NationalId: national_id, TaxId: tax_id, VatId: vat_id, AddressUnstructured: address_unstructured,
          AddressStreet: address_street, StreetNumber: street_number, Locality: locality, District: district, Region: region,
          PostalCode: postal_code, City: city, Country: country, MaxResults: max_results
        }
        process_request("/#{country_code}/Company/Search", 'GET', payload.compact)
      end
    end
  end
end
