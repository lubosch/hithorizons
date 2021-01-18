# frozen_string_literal: true

module Hithorizons
  class Country
    attr_reader :iso3, :name

    def initialize(iso3, name, registration_number: false, tax_id: false, vat_id: false)
      @iso3 = iso3
      @name = name
      @registration_number = registration_number
      @tax_id = tax_id
      @vat_id = vat_id
    end

    def vat_id?
      @vat_id
    end

    def tax_id?
      @tax_id
    end

    def registration_number?
      @registration_number
    end

    def vat_id(company)
      return unless vat_id?

      company['NationalId']
    end

    def tax_id(company)
      return unless tax_id?

      company['NationalId']
    end

    def registration_number(company)
      return unless registration_number?

      company['NationalId']
    end
  end
end
