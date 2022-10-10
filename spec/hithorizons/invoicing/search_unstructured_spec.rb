# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Hithorizons::Invoicing::SearchUnstructured do
  let(:headers) { { 'Content-Type' => 'application/json' } }
  describe '.get' do
    subject do
      described_class.get(country_code: 'sk', name: 'People2People', max_results: 2, address: 'Suche myto 6')
    end

    it 'sends search request to hithorizons' do
      stub_request(:get, 'https://api.hithorizons.com/invoicing/sk/Company/SearchUnstructured?Address=Suche myto 6&MaxResults=2&Name=People2People')
        .and_return(headers:, body: '{
 "Success": true,
 "Error": null,
 "Result": {
 "Results": [
 {
 "Id": "47165367",
 "CompanyName": "FinStat, s. r. o.",
 "CompanyAlternativeName": null,
 "AddressStreet": "Ľudmily Kraskovskej",
 "StreetNumber": "1402/14",
 "Locality": null,
 "District": "Bratislava V",
 "Region": "Bratislavský",
 "PostalCode": "85110",
 "City": "Bratislava",
 "Country": "SK",
 "Status": null,
 "IncorporationDate": "2013-05-18T00:00:00",
 "DissolutionDate": null,
 "NationalId": "47165367",
 "TaxId": "2023771332",
 "VatId": "SK2023771332",
 "Inactive": false
 }
 ],
 "ResultsCount": 2,
 "TotalCount": 2
 }
}')
      expect(subject.success).to be_truthy
      expect(subject.results[0]['Id']).to eq '47165367'
    end
  end
end
