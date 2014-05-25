module Edmunds
  class StyleV2 < API

  	def find(make, model, year)
      @base = "https://api.edmunds.com/api/vehicle/v2"
      @url = "/#{make}/#{model}/#{year}/styles?"
      call_api
      @json["styles"]
    rescue
      return false
    end
  end

end