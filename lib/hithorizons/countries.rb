# frozen_string_literal: true

module Hithorizons
  class Countries
    LIST = [
      Country.new('ALB', 'ALBANIA', registration_number: true),
      Country.new('AND', 'ANDORRA', registration_number: true),
      Country.new('ARM', 'ARMENIA', registration_number: true),
      Country.new('AUS', 'AUSTRIA', vat_id: true),
      Country.new('AZE', 'AZERBAIJAN', registration_number: true),
      Country.new('BLR', 'BELARUS', registration_number: true),
      Country.new('BEL', 'BELGIUM', registration_number: true),
      Country.new('BIH', 'BOSNIA AND HERZEGOVINA', registration_number: true),
      Country.new('BGR', 'BULGARIA', registration_number: true),
      Country.new('HRV', 'CROATIA', registration_number: true),
      Country.new('CYP', 'CYPRUS', vat_id: true),
      Country.new('CZE', 'CZECH REPUBLIC', registration_number: true, invoicing_api: true),
      Country.new('DNK', 'DENMARK', registration_number: true),
      Country.new('GBR', 'ENGLAND', vat_id: true, invoicing_api: true),
      Country.new('EST', 'ESTONIA', vat_id: true),
      Country.new('FRO', 'FAROE ISLANDS', registration_number: true),
      Country.new('FIN', 'FINLAND', registration_number: true),
      Country.new('FRA', 'FRANCE', vat_id: true),
      Country.new('GEO', 'GEORGIA', registration_number: true),
      Country.new('DEU', 'GERMANY', vat_id: true, invoicing_api: true),
      Country.new('GIB', 'GIBRALTAR', registration_number: true),
      Country.new('GRC', 'GREECE', registration_number: true),
      Country.new('GRL', 'GREENLAND', registration_number: true),
      Country.new('HUN', 'HUNGARY', tax_id: true, invoicing_api: true),
      Country.new('ISL', 'ICELAND', registration_number: true),
      Country.new('ITA', 'ITALY', registration_number: true),
      Country.new('KAZ', 'KAZAKHSTAN', registration_number: true),
      Country.new('XKX', 'KOSOVO', registration_number: true),
      Country.new('KGZ', 'KYRGYZSTAN', registration_number: true),
      Country.new('LVA', 'LATVIA', vat_id: true),
      Country.new('LIE', 'LIECHTENSTEIN', vat_id: true),
      Country.new('LTU', 'LITHUANIA', registration_number: true),
      Country.new('LUX', 'LUXEMBOURG', vat_id: true),
      Country.new('MKD', 'MACEDONIA', registration_number: true),
      Country.new('MLT', 'MALTA', vat_id: true),
      Country.new('MDA', 'MOLDOVA', registration_number: true),
      Country.new('MCO', 'MONACO', registration_number: true),
      Country.new('MNE', 'MONTENEGRO', registration_number: true),
      Country.new('NLD', 'NETHERLANDS', vat_id: true),
      Country.new('NOR', 'NORWAY', registration_number: true),
      Country.new('POL', 'POLAND', registration_number: true, invoicing_api: true),
      Country.new('PRT', 'PORTUGAL', registration_number: true),
      Country.new('ROU', 'ROMANIA', tax_id: true),
      Country.new('RUS', 'RUSSIAN FEDERATION', registration_number: true),
      Country.new('SMR', 'SAN MARINO', registration_number: true),
      Country.new('SRB', 'SERBIA', registration_number: true),
      Country.new('SVK', 'SLOVAKIA', registration_number: true, invoicing_api: true),
      Country.new('SVN', 'SLOVENIA', vat_id: true),
      Country.new('ESP', 'SPAIN', registration_number: true),
      Country.new('SWE', 'SWEDEN', vat_id: true),
      Country.new('CHE', 'SWITZERLAND', registration_number: true),
      Country.new('TJK', 'TAJIKISTAN', registration_number: true),
      Country.new('TUR', 'TURKEY', registration_number: true),
      Country.new('TKM', 'TURKMENISTAN', registration_number: true),
      Country.new('UKR', 'UKRAINE', registration_number: true),
      Country.new('UZB', 'UZBEKISTAN', registration_number: true),
    ].freeze

    def self.find_by_iso3(iso3)
      LIST.find { |country| country.iso3 == iso3 }
    end

    def self.find_by_name(country_name)
      LIST.find { |country| country.name == country_name }
    end
  end
end
