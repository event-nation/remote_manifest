require 'net/http'
require 'json'
require 'sprockets'

module Sprockets
  class RemoteManifest < Manifest
    attr_reader :url

    def initialize(environment, url)
      @environment = environment
      @url = url

      data = {}

      begin
        data = fetch_remote_data @url
      rescue Net::HTTPError => e
        logger.error "unable to reach remote sprockets manifest file at #{@url}: #{e.class} #{e.message}"
      rescue JSON::ParserError => e
        logger.error "#{@url} contains invalid JSON: #{e.class} #{e.message}"
      end

      @data = data
    end

    private

    def fetch_remote_data(url)
      JSON.parse Net::HTTP.get(URI.parse(url))
    end
  end
end
