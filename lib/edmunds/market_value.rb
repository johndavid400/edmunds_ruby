module Edmunds
  class MarketValue < API

    def calculatenewtmv(style_id, color_id, zip, option_id)
      @url = "/calculatenewtmv?styleid=#{style_id}&colorid=#{color_id}&zip=#{zip}&optionid=#{option_id}&"
      call_tmv_api
    end

    def calculateusedtmv(style_id, condition, mileage, color_id, zip, option_id)
      @url = "/calculateusedtmv?styleid=#{style_id}&condition=#{condition}xx&mileage=#{mileage}x&colorid=#{color_id}&zip=#{zip}&optionid=#{option_id}x&"
      call_tmv_api
    end

    def calculatetypicallyequippedusedtmv(style_id, zip)
      @url = "/calculatetypicallyequippedusedtmv?styleid=#{style_id}&zip=#{zip}&"
      call_tmv_api
    end

    def findcertifiedpriceforstyle(style_id, zip)
      @url = "/findcertifiedpriceforstyle?styleid=#{style_id}&zip=#{zip}&"
      call_tmv_api
    end

    def findcpoyearsbymake(make_id)
      @url = "/findcpoyearsbymake?makeid=#{make_id}&"
      call_tmv_api
    end

    private

    def call_tmv_api
      @base = "http://api.edmunds.com/v1/api/tmv/tmvservice"
      call_api
      @json
    end

  end
end
