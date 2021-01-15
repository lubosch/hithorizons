# frozen_string_literal: true

RSpec.describe Hithorizons::Country do
  describe '#vat_id?' do
    it 'returns opposite of registration number' do
      expect(described_class.new(nil, nil, true)).not_to be_vat_id
      expect(described_class.new(nil, nil, false)).to be_vat_id
    end
  end

  describe '#registration_number?' do
    it 'returns registration number is present' do
      expect(described_class.new(nil, nil, true)).to be_registration_number
      expect(described_class.new(nil, nil, false)).not_to be_registration_number
    end
  end

  describe '#vat_id' do
    let(:company) { { 'NationalId' => '123123' } }

    it 'returns vat id from company NationalId' do
      expect(described_class.new('SVK', nil, true).vat_id(company)).to be_nil
      expect(described_class.new('HUN', nil, false).vat_id(company)).to eq 'HU123'
      expect(described_class.new('ROU', nil, false).vat_id(company)).to eq 'RO123123'
      expect(described_class.new('TUR', nil, false).vat_id(company)).to eq '123123'
    end
  end

  describe '#tax_id' do
    let(:company) { { 'NationalId' => '123123' } }

    it 'returns tax id from company NationalId' do
      expect(described_class.new('SVK', nil, true).tax_id(company)).to be_nil
      expect(described_class.new('HUN', nil, false).tax_id(company)).to eq '123123'
      expect(described_class.new('ROU', nil, false).tax_id(company)).to eq '123123'
      expect(described_class.new('TUR', nil, false).tax_id(company)).to be_nil
    end
  end

  describe '#registration_number' do
    let(:company) { { 'NationalId' => '123123' } }

    it 'returns tax id from company NationalId' do
      expect(described_class.new('SVK', nil, true).registration_number(company)).to eq '123123'
      expect(described_class.new('TUR', nil, false).registration_number(company)).to be_nil
    end
  end
end
