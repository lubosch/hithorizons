# frozen_string_literal: true

module Hithorizons
  module Company
    class BaseApi
      API_URL = '/Company'

      def self.process_request(uri, method = 'GET', payload = nil)
        response = request(uri, method, payload)

        raise Hithorizons::Error, response.body if response.status != 200

        Hithorizons::Company::Response.new(response.body)
      end

      def self.request(uri, method = 'GET', payload = nil)
        client = initialize_client

        client.send(method.downcase.to_sym) do |request|
          request.headers['Ocp-Apim-Subscription-Key'] = Hithorizons.config.api_key
          request.url("#{API_URL}#{uri}")
          if method == 'GET'
            request.params = payload
          else
            request.body = payload
          end
        end

      end

      def self.initialize_client
        ::Faraday.new(url: Hithorizons.config.api_url) do |faraday|
          faraday.request :json
          faraday.response :json

          faraday.adapter Faraday.default_adapter
        end
      end

      def self.get(path)
        request(path, 'GET')
      end
    end
  end
end
