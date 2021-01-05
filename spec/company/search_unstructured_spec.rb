# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Hithorizons::Company::SearchUnstructured do
  describe '.get' do
    subject do
      described_class.get(name: 'People2People', max_results: 2, address: 'Suche myto 6')
    end

    it 'sends search request to hithorizons' do
      stub_request(:get, 'https://api.hithorizons.com/Company/SearchUnstructured?Address=Suche myto 6&MaxResults=2&Name=People2People')
        .and_return(body: '{ "Success": true, "Result": { "Results": [{ "HitHorizonsId": "H-SK0004570782" }] } }')
      expect(subject.success).to be_truthy
      expect(subject.results[0]['HitHorizonsId']).to eq 'H-SK0004570782'
    end
  end
end
