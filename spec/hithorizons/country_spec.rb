# frozen_string_literal: true

RSpec.describe Hithorizons::Country do
  describe '#tax_id' do
    let(:company) { { 'NationalId' => '123123' } }

    it 'returns tax id from company NationalId' do
      expect(described_class.new('SVK', nil, tax_id: false).tax_id(company)).to be_nil
      expect(described_class.new('HUN', nil, tax_id: true).tax_id(company)).to eq '123123'
    end
  end

  describe '#registration_number' do
    let(:company) { { 'NationalId' => '123123' } }

    it 'returns tax id from company NationalId' do
      expect(described_class.new('SVK', nil, registration_number: true).registration_number(company)).to eq '123123'
      expect(described_class.new('TUR', nil, registration_number: false).registration_number(company)).to be_nil
    end
  end

  describe '#vat_id' do
    let(:company) { { 'NationalId' => '123123' } }

    it 'returns tax id from company NationalId' do
      expect(described_class.new('SVK', nil, vat_id: true).vat_id(company)).to eq '123123'
      expect(described_class.new('TUR', nil, vat_id: false).vat_id(company)).to be_nil
    end
  end
end
