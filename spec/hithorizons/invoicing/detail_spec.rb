# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Hithorizons::Invoicing::Detail do
  describe '.get' do
    subject do
      described_class.get(id: '47165367', country_code: 'sk')
    end

    it 'sends request to hithorizons' do
      stub_request(:get, 'https://api.hithorizons.com/invoicing/sk/Company/Detail?Id=47165367')
        .with(headers: { 'Ocp-Apim-Subscription-Key' => 'hithorizonsInvoicingAPIkey' })
        .and_return(body: '{
 "Success": true,
 "Error": null,
 "Result": {
 "Id": "47165367",
 "CompanyName": "FinStat, s. r. o.",
 "CompanyAlternativeName": null,
 "RegisteredAddress": {
 "AddressStreet": "Ľudmily Kraskovskej",
 "StreetNumber": "1402/14",
 "Locality": null,
 "District": "Bratislava V",
 "Region": "Bratislavský",
 "PostalCode": "85110",
 "City": "Bratislava",
 "Country": "SK"
 },
 "AdditionalAddresses": null,
 "Status": null,
 "IncorporationDate": "2013-05-18",
 "DissolutionDate": null,
 "NationalId": "47165367",
 "TaxId": "2023771332",
 "VatId": "SK2023771332",
 "VatValidationResult": null,
 "VatValidationDate": null,
 "Inactive": false
 }
}')
      expect(subject.success).to be_truthy
      expect(subject.result['Id']).to eq('47165367')
    end
  end
end
