module Edmunds

  class Reviews < API
    def find(make, model, year)
      @base = "https://api.edmunds.com/api/vehiclereviews/v2"
      @url = "/#{make}/#{model}/#{year}?pagesize=4&"
      call_api
      @json["reviews"]
    rescue
      return false
    end
  end

end