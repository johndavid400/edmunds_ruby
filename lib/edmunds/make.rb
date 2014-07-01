module Edmunds
  class Make < API

    def find_all
      @url = "/findall?"
      call_make_api
    end

    def find_by_id(make_id)
      @url = "/findbyid?id=#{make_id}&"
      call_make_api
    end

    def find_future_makes
      @url = "/findfuturemakes?"
      call_make_api
    end

    def find_make_by_name(make_name)
      @url = "/findmakebyname?name=#{make_name}&"
      call_make_api
    end

    def find_makes_by_model_year(model_year)
      @url = "/findmakesbymodelyear?year=#{model_year}&"
      call_make_api
    end

    def find_makes_by_publication_state(condition)
      # should either be "new" or "used"
      @url = "/findmakesbypublicationstate?state=#{condition}&"
      call_make_api
    end

    def find_new_and_used
      @url = "/findnewandused?"
      call_make_api
    end

    def find_new_and_used_makes_by_model_year(year)
      @url = "/findnewandusedmakesbymodelyear?year=#{year}&"
      call_make_api
    end

    def find_new_makes
      @url = "/findnewmakes?"
      call_make_api
    end

    def find_used_makes
      @url = "/findusedmakes?"
      call_make_api
    end

    private

    def call_make_api
      @base = "http://api.edmunds.com/v1/api/vehicle/makerepository"
      call_api
      @json["makeHolder"]
    end

  end
end
