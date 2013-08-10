module Edmunds
  class Make < API

    def find_all
      @url = "/makerepository/findall?"
      call_make_api
    end

    def find_by_id(make_id)
      @url = "/makerepository/findbyid?id=#{make_id}&"
      call_make_api
    end

    def find_future_makes
      @url = "/makerepository/findfuturemakes?"
      call_make_api
    end

    def find_make_by_name(make_name)
      @url = "/makerepository/findmakebyname?name=#{make_name}&"
      call_make_api
    end

    def find_makes_by_model_year(model_year)
      @url = "/makerepository/findmakesbymodelyear?year=#{model_year}&"
      call_make_api
    end

    def find_makes_by_publication_state(condition)
      # should either be "new" or "used"
      @url = "/makerepository/findmakesbypublicationstate?state=#{condition}&"
      call_make_api
    end

    def find_new_and_used
      @url = "/makerepository/findnewandused?"
      call_make_api
    end

    def find_new_and_used_makes_by_model_year(year)
      @url = "/makerepository/findnewandusedmakesbymodelyear?year=#{year}&"
      call_make_api
    end

    def find_new_makes
      @url = "/makerepository/findnewmakes?"
      call_make_api
    end

    def find_used_makes
      @url = "/makerepository/findusedmakes?"
      call_make_api
    end

    private

    def call_make_api
      @base = "http://api.edmunds.com/v1/api/vehicle"
      call_api
      @json["makeHolder"]
    end

  end
end
