module Edmunds
  class V2 < API
    def call_v2_api
      @base = "https://api.edmunds.com/api/vehicle/v2"
      call_api
    end
  end
end
