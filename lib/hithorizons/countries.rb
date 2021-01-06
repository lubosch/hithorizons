# frozen_string_literal: true

module Hithorizons
  class Countries
    MAPPING = {
      ALB: 'ALBANIA',
      AND: 'ANDORRA',
      ARM: 'ARMENIA',
      AUS: 'AUSTRIA',
      AZE: 'AZERBAIJAN',
      BLR: 'BELARUS',
      BEL: 'BELGIUM',
      BIH: 'BOSNIA AND HERZEGOVINA',
      BGR: 'BULGARIA',
      HRV: 'CROATIA',
      CYP: 'CYPRUS',
      CZE: 'CZECH REPUBLIC',
      DNK: 'DENMARK',
      GBR: 'ENGLAND',
      EST: 'ESTONIA',
      FRO: 'FAROE ISLANDS',
      FIN: 'FINLAND',
      FRA: 'FRANCE',
      GEO: 'GEORGIA',
      DEU: 'GERMANY',
      GIB: 'GIBRALTAR',
      GRC: 'GREECE',
      GRL: 'GREENLAND',
      HUN: 'HUNGARY',
      ISL: 'ICELAND',
      ITA: 'ITALY',
      KAZ: 'KAZAKHSTAN',
      XKX: 'KOSOVO',
      KGZ: 'KYRGYZSTAN',
      LVA: 'LATVIA',
      LIE: 'LIECHTENSTEIN',
      LTU: 'LITHUANIA',
      LUX: 'LUXEMBOURG',
      MKD: 'MACEDONIA',
      MLT: 'MALTA',
      MDA: 'MOLDOVA',
      MCO: 'MONACO',
      MNE: 'MONTENEGRO',
      NLD: 'NETHERLANDS',
      NOR: 'NORWAY',
      POL: 'POLAND',
      PRT: 'PORTUGAL',
      ROU: 'ROMANIA',
      RUS: 'RUSSIAN FEDERATION',
      SMR: 'SAN MARINO',
      SRB: 'SERBIA',
      SVK: 'SLOVAKIA',
      SVN: 'SLOVENIA',
      ESP: 'SPAIN',
      SWE: 'SWEDEN',
      CHE: 'SWITZERLAND',
      TJK: 'TAJIKISTAN',
      TUR: 'TURKEY',
      TKM: 'TURKMENISTAN',
      UKR: 'UKRAINE',
      UZB: 'UZBEKISTAN',
    }.freeze

    def self.find_by_iso3(iso3)
      MAPPING[iso3.upcase.to_sym] if iso3
    end

    def self.iso3_by_country(country)
      MAPPING.invert[country]
    end
  end
end
