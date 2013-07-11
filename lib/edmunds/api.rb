module Edmunds
  class API
    # Using this model requires setting your Edmunds API key in your ~/.bashrc file like so:
    # export EDMUNDS_VEHICLE="your_api_key_here"

    require 'rest_client'
    require 'crack'
    require 'crack/json'

    attr_reader :base, :api_key, :image_base_url, :format, :base_url

    def initialize
      if set_key
        @base = "http://api.edmunds.com/v1/api/vehicle"
        @image_base_url = "http://media.ed.edmunds-media.com"
        @format = "fmt=json&api_key=#{@api_key}"
      else
        return @errors
      end
    end

    def set_key
      @api_key = ENV["EDMUNDS_VEHICLE"] || Rails.configuration.edmunds_vehicle_api_key
    rescue
      @errors = "You need to set your Edmunds Vehicle API key first"
      return false
    end

    def call_api
      @base_url = @base + @url + @format
      @resp = RestClient.get(@base_url)
      @json = Crack::JSON.parse(@resp)
    end
  end

end
