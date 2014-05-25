module Edmunds 
	class ModelV2 < API
    def find_models_by_make_and_year(make, year)
      @base = 'https://api.edmunds.com/api/vehicle/v2'
      @url = "/#{make}/models?year=#{year}&"
      call_api
      @json['models']
    end
  end
end