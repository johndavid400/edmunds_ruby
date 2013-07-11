module EdmundsRuby
  class ModelYear < API

    def get_model_years_from_model_id(model_id)
      @url = "/modelyearrepository/formodelid?modelid=#{model_id}&"
      call_api
      @json["modelYearHolder"]
    end

  end
end
