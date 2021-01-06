# frozen_string_literal: true

module Hithorizons
  class CompanyTypes
    MAPPING = {
      3 => 'corporation',
      8 => 'joint venture',
      12 => 'partnership of unknown type',
      13 => 'proprietorship',
      50 => 'government body',
      100 => 'cooperative',
      101 => 'non profit organization',
      118 => 'local government body',
      120 => 'foreign company',
    }.freeze

    def self.find_by_code(code)
      MAPPING[code.to_i] || 'Other'
    end
  end
end
