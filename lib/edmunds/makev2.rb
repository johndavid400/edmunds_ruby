module Edmunds
	class Make < API
    def find_makes_by_year(year)
      @base = 'https://api.edmunds.com/api/vehicle/v2'
      @url = "/makes?year=#{year}&"
      call_api
      @json['makes']
    end
  end
end