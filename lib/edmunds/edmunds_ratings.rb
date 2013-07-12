module Edmunds
  class EdmundsRatings < API

    def get_ratings(make, model, year, submodel)
      @base = "http://api.edmunds.com/api/vehicle/v2/grade"
      @url = "/#{make}/#{model}/#{year}?sub=#{submodel}&"
      call_api
      @json
    rescue
      return false
    end

    def get_ratings_by_style_id(style_id)
      @base = "http://api.edmunds.com/api/vehicle/v2/grade"
      @url = "/#{style_id}?"
      call_api
      @json
    rescue
      return false
    end

  end
end
