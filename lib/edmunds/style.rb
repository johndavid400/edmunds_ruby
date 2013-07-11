module Edmunds
  class Style < API

    def find_by_id(style_id)
      @url = "/stylerepository/findbyid?id=#{style_id}&"
      call_api
      @json["styleHolder"]
    end

    def find_styles_by_make_model_year(make, model, year)
      @url = "/stylerepository/findstylesbymakemodelyear?make=#{make}&model=#{model}&year=#{year}&"
      call_api
      @json["styleHolder"]
    end

    def find_styles_by_model_year_id(model_year_id)
      @url = "/stylerepository/findstylesbymodelyearid?modelyearid=#{model_year_id}&"
      call_api
      @json["styleHolder"]
    end

  end
end
