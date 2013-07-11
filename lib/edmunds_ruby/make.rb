module EdmundsRuby
  class Make < API
    # Makes
    def find_all_makes
      @url = "/makerepository/findall?"
      call_api
      @json["makeHolder"]
    end

    def find_make_by_id(make_id)
      @url = "/makerepository/findbyid?id=#{make_id}&"
      call_api
      @json["makeHolder"]
    end

    def find_future_makes
      @url = "/makerepository/findfuturemakes?"
      call_api
      @json["makeHolder"]
    end

    def find_make_by_name(make_name)
      @url = "/makerepository/findmakebyname?name=#{make_name}&"
      call_api
      @json["makeHolder"]
    end

    def find_makes_by_model_year(model_year)
      @url = "/makerepository/findmakesbymodelyear?year=#{model_year}&"
      call_api
      @json["makeHolder"]
    end

    def find_makes_by_publication_state(condition)
      # should either be "new" or "used"
      @url = "/makerepository/findmakesbypublicationstate?state=#{condition}&"
      call_api
      @json["makeHolder"]
    end

    def find_new_and_used
      @url = "/makerepository/findnewandused"
      call_api
      @json["makeHolder"]
    end

    def find_new_and_used_makes_by_model_year(year)
      @url = "/makerepository/findnewandusedmakesbymodelyear?year=#{year}&"
      call_api
      @json["makeHolder"]
    end

    def find_new_makes
      @url = "/makerepository/findnewmakes?"
      call_api
      @json["makeHolder"]
    end

    def find_used_makes
      @url = "/makerepository/findusedmakes?"
      call_api
      @json["makeHolder"]
    end
  end
end
