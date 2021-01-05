# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Hithorizons::Company::Search do
  describe '.get' do
    subject do
      described_class.get(company_name: 'People2People', duns_number: '496012106', national_id: '51225221', max_results: 2,
                          address_unstructured: 'Suche myto 6', address_street: 'Suche myto', city: 'Bratislava', country: 'SLOVAKIA')
    end

    it 'sends search request to hithorizons' do
      stub_request(:get, %w(https://api.hithorizons.com/Company/Search?
                            AddressStreet=Suche\ myto&AddressUnstructured=Suche\ myto\ 6&City=Bratislava&
                            CompanyName=People2People&Country=SLOVAKIA&DUNSNumber=496012106&MaxResults=2&NationalId=51225221).join)
        .and_return(body: '{ "Success": true, "Result": { "Results": [{ "HitHorizonsId": "H-SK0004570782" }] } }')
      expect(subject.success).to be_truthy
      expect(subject.results[0]['HitHorizonsId']).to eq 'H-SK0004570782'
    end
  end
end
