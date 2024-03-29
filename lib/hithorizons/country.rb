# frozen_string_literal: true

module Hithorizons
  class Country
    attr_reader :iso3, :iso2, :name, :invoicing_api

    def initialize(iso3, name, registration_number: false, iso2: nil, tax_id: false, vat_id: false, invoicing_api: false)
      @iso3 = iso3
      @iso2 = iso2
      @name = name
      @registration_number = registration_number
      @tax_id = tax_id
      @vat_id = vat_id
      @invoicing_api = invoicing_api
    end

    def invoicing_api?
      @invoicing_api
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
