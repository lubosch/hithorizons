# frozen_string_literal: true

module Hithorizons
  module Company
    class Detail < BaseApi
      def self.get(id)
        process_request('/Get', 'GET', { HitHorizonsId: id })
      end
    end
  end
end
