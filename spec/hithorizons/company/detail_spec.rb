# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Hithorizons::Company::Detail do
  let(:headers) { { 'Content-Type' => 'application/json' } }
  describe '.get' do
    subject do
      described_class.get('H-SK0004570782')
    end

    it 'sends request to hithorizons' do
      stub_request(:get, 'https://api.hithorizons.com/Company/Get?HitHorizonsId=H-SK0004570782')
        .and_return(body: '{ "Success": true, "Result": { "HitHorizonsId": "H-SK0004570782" } }', headers:)
      expect(subject.success).to be_truthy
      expect(subject.result['HitHorizonsId']).to eq 'H-SK0004570782'
    end
  end
end
