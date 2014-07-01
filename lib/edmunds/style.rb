module Edmunds
  class Style < API

    def find_by_id(style_id)
      @url = "/findbyid?id=#{style_id}&"
      call_style_api
    end

    def find_styles_by_make_model_year(make, model, year)
      @url = "/findstylesbymakemodelyear?make=#{make}&model=#{model}&year=#{year}&"
      call_style_api
    end

    def find_styles_by_model_year_id(model_year_id)
      @url = "/findstylesbymodelyearid?modelyearid=#{model_year_id}&"
      call_style_api
    end

    private

    def call_style_api
      @base = "http://api.edmunds.com/v1/api/vehicle/stylerepository"
      call_api
      @json["styleHolder"]
    end

  end
end
