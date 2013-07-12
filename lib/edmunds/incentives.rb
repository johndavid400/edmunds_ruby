module Edmunds
  class Incentives < API

    def find_by_id(id)
      @url = "/findbyid?id=#{id}&"
      call_incentive_api
    end

    def find_incentives_by_category_and_zip_code(category, zip)
      @url = "/findincentivesbycategoryandzipcode?category=#{category}&zipcode=#{zip}&"
      call_incentive_api
    end

    def find_incentives_by_make_id(make_id)
      @url = "/findincentivesbymakeid?makeid=#{make_id}&"
      call_incentive_api
    end

    def find_incentives_by_make_id_and_zip_code(make_id, zip)
      @url = "/findincentivesbymakeid?makeid=#{make_id}&zipcode=#{zip}&"
      call_incentive_api
    end

    def find_incentives_by_model_year_id_and_zip_code(model_year_id, zip)
      @url = "/findincentivesbymodelyearidandzipcode?modelyearid=#{model_year_id}&zipcode=#{zip}&"
      call_incentive_api
    end

    def find_incentives_by_style_id(style_id)
      @url = "/findincentivebystyleid?styleid=#{style_id}&"
      call_incentive_api
    end

    def find_incentives_by_style_id_and_zip_code(style_id, zip)
      @url = "/findincentivesbystyleidandzipcode?styleid=#{style_id}&zipcode=#{zip}&"
      call_incentive_api
    end

    private

    def call_incentive_api
      @base = "http://api.edmunds.com/v1/api/incentive/incentiverepository"
      call_api
      @json["incentiveHolder"]
    end

  end
end
