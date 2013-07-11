module EdmundsRuby
  class Model < API

    # models
    def find_by_id(model_id)
      @url = "/modelrepository/findbyid?id=#{model_id}&"
      call_api
      @json["modelHolder"]
    end

    def find_by_make_id(make_id)
      @url = "/modelrepository/findbymakeid?makeid=#{make_id}&"
      call_api
      @json["modelHolder"]
    end

    def find_future_models_by_make_id(make_id)
      @url = "/modelrepository/findfuturemodelsbymakeid?makeid=#{make_id}&"
      call_api
      @json["modelHolder"]
    end

    def find_model_by_make_model_name(make_name, model_name)
      @url = "/modelrepository/findmodelbymakemodelname?make=#{make_name}&model=#{model_name}&"
      call_api
      @json["modelHolder"]
    end

    def find_models_by_make(make)
      @url = "/modelrepository/findmodelsbymake?make=#{make}&"
      call_api
      @json["modelHolder"]
    end

    def find_models_by_make_and_publication_state(make, state)
      # state should be "new", "used", etc..
      @url = "/modelrepository/findmodelsbymakeandpublicationstate?make=#{make}&state=#{state}&"
      call_api
      @json["modelHolder"]
    end

    def find_models_by_make_and_year(make, year)
      @url = "/modelrepository/findmodelsbymakeandyear?make=#{make}&year=#{year}&"
      call_api
      @json["modelHolder"]
    end

    def find_new_and_used_models_by_make_id(make_id)
      @url = "/modelrepository/findnewandusedmodelsbymakeid?makeid=#{make_id}&"
      call_api
      @json["modelHolder"]
    end

    def find_new_models_by_make_id(make_id)
      @url = "/modelrepository/findnewmodelsbymakeid?makeId=#{make_id}&"
      call_api
      @json["modelHolder"]
    end

    def find_used_models_by_make_id(make_id)
      @url = "/modelrepository/findusedmodelsbymakeid?makeId=#{make_id}&"
      call_api
      @json["modelHolder"]
    end

  end
end
