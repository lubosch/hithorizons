# frozen_string_literal: true

module Hithorizons
  class Countries
    LIST = [
      ['ALB', 'ALBANIA', true],
      ['AND', 'ANDORRA', true],
      ['ARM', 'ARMENIA', true],
      ['AUS', 'AUSTRIA', false],
      ['AZE', 'AZERBAIJAN', true],
      ['BLR', 'BELARUS', true],
      ['BEL', 'BELGIUM', true],
      ['BIH', 'BOSNIA AND HERZEGOVINA', true],
      ['BGR', 'BULGARIA', true],
      ['HRV', 'CROATIA', true],
      ['CYP', 'CYPRUS', false],
      ['CZE', 'CZECH REPUBLIC', true],
      ['DNK', 'DENMARK', true],
      ['GBR', 'ENGLAND', false],
      ['EST', 'ESTONIA', false],
      ['FRO', 'FAROE ISLANDS', true],
      ['FIN', 'FINLAND', true],
      ['FRA', 'FRANCE', false],
      ['GEO', 'GEORGIA', true],
      ['DEU', 'GERMANY', false],
      ['GIB', 'GIBRALTAR', true],
      ['GRC', 'GREECE', true],
      ['GRL', 'GREENLAND', true],
      ['HUN', 'HUNGARY', false],
      ['ISL', 'ICELAND', true],
      ['ITA', 'ITALY', true],
      ['KAZ', 'KAZAKHSTAN', true],
      ['XKX', 'KOSOVO', true],
      ['KGZ', 'KYRGYZSTAN', true],
      ['LVA', 'LATVIA', false],
      ['LIE', 'LIECHTENSTEIN', false],
      ['LTU', 'LITHUANIA', true],
      ['LUX', 'LUXEMBOURG', false],
      ['MKD', 'MACEDONIA', true],
      ['MLT', 'MALTA', false],
      ['MDA', 'MOLDOVA', true],
      ['MCO', 'MONACO', true],
      ['MNE', 'MONTENEGRO', true],
      ['NLD', 'NETHERLANDS', false],
      ['NOR', 'NORWAY', true],
      ['POL', 'POLAND', true],
      ['PRT', 'PORTUGAL', true],
      ['ROU', 'ROMANIA', false],
      ['RUS', 'RUSSIAN FEDERATION', true],
      ['SMR', 'SAN MARINO', true],
      ['SRB', 'SERBIA', true],
      ['SVK', 'SLOVAKIA', true],
      ['SVN', 'SLOVENIA', false],
      ['ESP', 'SPAIN', true],
      ['SWE', 'SWEDEN', false],
      ['CHE', 'SWITZERLAND', true],
      ['TJK', 'TAJIKISTAN', true],
      ['TUR', 'TURKEY', true],
      ['TKM', 'TURKMENISTAN', true],
      ['UKR', 'UKRAINE', true],
      ['UZB', 'UZBEKISTAN', true],
    ].map { |country| Country.new(*country) }

    def self.find_by_iso3(iso3)
      LIST.find { |country| country.iso3 == iso3 }
    end

    def self.find_by_name(country_name)
      LIST.find { |country| country.name == country_name }
    end
  end
end
