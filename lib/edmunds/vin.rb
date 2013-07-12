module Edmunds
  class VIN < API

    def full(vin)
      @base = "http://api.edmunds.com/v1/api/toolsrepository/vindecoder?"
      @url = "vin=#{vin}&"
      call_api
      @json["styleHolder"]
    end

    def basic(vin)
      @base = "http://api.edmunds.com/api/v1/vehicle/vin"
      @url = "/#{vin}/configuration?"
      call_api
      @json
    end

  end
end
