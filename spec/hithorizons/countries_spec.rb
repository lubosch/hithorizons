# frozen_string_literal: true

RSpec.describe Hithorizons::Countries do
  describe '#find_by_iso3' do
    it 'returns country by iso3' do
      expect(described_class.find_by_iso3('SVK').name).to eq 'SLOVAKIA'
      expect(described_class.find_by_name('SLOVAKIA').iso3).to eq 'SVK'
    end

    context 'when not existing' do
      it 'returns nil' do
        expect(described_class.find_by_iso3('XYZ')).to be_nil
      end
    end
  end

  describe '#find_by_name' do
    it 'returns country by name' do
      expect(described_class.find_by_name('SLOVAKIA').iso3).to eq 'SVK'
    end

    context 'when not existing' do
      it 'returns nil' do
        expect(described_class.find_by_name('SLOVAK')).to be_nil
      end
    end
  end
end
