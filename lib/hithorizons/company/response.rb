# frozen_string_literal: true

module Hithorizons
  module Company
    class Response
      attr_reader :response

      def initialize(response)
        @response = response
      end

      def success
        response['Success']
      end

      def error
        response['Error']
      end

      def result
        response['Result']
      end

      def results
        response.dig('Result', 'Results')
      end

      def total_count
        response.dig('Result', 'TotalCount')
      end

      def results_count
        response.dig('Result', 'ResultsCount')
      end
    end
  end
end
