module Edmunds
  class ModelYear < API

    def find_by_id(id)
      @url = "/modelyearrepository/findbyid?id=#{id}&"
      call_model_year_api
    end

    def find_distinct_year_with_new
      @url = "/modelyearrepository/finddistinctyearwithnew?"
      call_model_year_api
      @json
    end

    def find_distinct_year_with_new_or_used
      @url = "/modelyearrepository/finddistinctyearwithneworused?"
      call_model_year_api
      @json
    end

    def find_distinct_year_with_used
      @url = "/modelyearrepository/finddistinctyearwithused?"
      call_model_year_api
      @json
    end

    def find_future_model_years_by_model_id(model_id)
      @url = "/modelyearrepository/findfuturemodelyearsbymodelid?modelId=#{model_id}&"
      call_model_year_api
    end

    def find_model_years_by_make_and_year(make, year)
      @url = "/modelyearrepository/findmodelyearsbymakeandyear?make=#{make}&year=#{year}&"
      call_model_year_api
    end

    def find_model_years_by_make_model(make, model)
      @url = "/modelyearrepository/findmodelyearsbymakemodel?make=#{make}&model=#{model}&"
      call_model_year_api
      @json["modelYearHolder"]
    end

    def find_new_and_used_model_years_by_makeid_and_year(make_id, year)
      @url = "/modelyearrepository/findnewandusedmodelyearsbymakeidandyear?makeid=#{make_id}&year=#{year}&"
      call_model_year_api
    end

    def find_new_model_years_by_model_id(model_id)
      @url = "/modelyearrepository/findnewmodelyearsbymodelid?modelId=#{model_id}&"
      call_model_year_api
    end

    def find_used_model_years_by_model_id(model_id)
      @url = "/modelyearrepository/findusedmodelyearsbymodelid?modelId=#{model_id}&"
      call_model_year_api
    end

    def find_years_by_category_and_publication_state(category, state)
      @url = "/modelyearrepository/findyearsbycategoryandpublicationstate?category=#{category}&state=#{state}&"
      call_model_year_api
      @json
    end

    def for_model_id(model_id)
      @url = "/modelyearrepository/formodelid?modelid=#{model_id}&"
      call_model_year_api
    end

    def for_year_make_model(year, make, model)
      @url = "/modelyearrepository/foryearmakemodel?year=#{year}&make=#{make}&model=#{model}&"
      call_model_year_api
    end

    private

    def call_model_year_api
      @base = "http://api.edmunds.com/v1/api/vehicle"
      call_api
      @json["modelYearHolder"]
    end

  end
end
