# frozen_string_literal: true

module Hithorizons
  class IndustryTypes
    MAPPING = {
      'A' => 'Agriculture, Forestry, and Fishing',
      'B' => 'Mining',
      'C' => 'Construction',
      'D' => 'Manufacturing',
      'E' => 'Transportation, Communications, Electric, Gas, and Sanitary Services',
      'F' => 'Wholesale Trade',
      'G' => 'Retail Trade',
      'H' => 'Finance, Insurance, and Real Estate',
      'I' => 'Services',
      'J' => 'Public Sector',
      'Y' => 'Unknown industry',
    }.freeze

    def self.find_by_code(code)
      MAPPING[code] || 'Other'
    end
  end
end
