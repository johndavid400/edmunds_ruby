module EdmundsRuby
  class Style < API

    # styles
    def find_model_year_styles(model_year_id)
      @url = "/stylerepository/findstylesbymodelyearid?modelyearid=#{model_year_id}&"
      call_api
      @json["styleHolder"]
    end

    def find_style_by_id(style_id)
      @url = "/stylerepository/findbyid?id=#{style_id}&"
      call_api
      @json["styleHolder"]
    end

  end
end
