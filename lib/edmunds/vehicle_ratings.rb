module Edmunds
  class VehicleRating < API

    def find(make, model, year)
      @url = "?make=#{make}&model=#{model}&year=#{year}&"
      call_ratings_api
    end

    private

    def call_ratings_api
      @base = "http://api.edmunds.com/v1/api/crrrepository/getcrrformakemodelyear"
      call_api
      @json
    end

  end
end
