# frozen_string_literal: true

module Hithorizons
  class Country
    attr_reader :iso3, :name

    def initialize(iso3, name, registration_number)
      @iso3 = iso3
      @name = name
      @registration_number = registration_number
    end

    def vat_id?
      !@registration_number
    end

    def registration_number?
      @registration_number
    end

    def vat_id(company)
      return unless vat_id?

      case iso3
      when 'HUN'
        "HU#{company['NationalId'][0...-3]}"
      when 'ROU'
        "RO#{company['NationalId']}"
      else
        company['NationalId']
      end
    end

    def tax_id(company)
      case iso3
      when 'HUN', 'ROU'
        company['NationalId']
      end
    end

    def registration_number(company)
      @registration_number ? company['NationalId'] : nil
    end
  end
end
