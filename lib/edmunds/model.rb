module Edmunds
  class Model < API

    def find_by_id(model_id)
      @url = "/findbyid?id=#{model_id}&"
      call_model_api
    end

    def find_by_make_id(make_id)
      @url = "/findbymakeid?makeid=#{make_id}&"
      call_model_api
    end

    def find_future_models_by_make_id(make_id)
      @url = "/findfuturemodelsbymakeid?makeid=#{make_id}&"
      call_model_api
    end

    def find_model_by_make_model_name(make_name, model_name)
      @url = "/findmodelbymakemodelname?make=#{make_name}&model=#{model_name}&"
      call_model_api
    end

    def find_models_by_make(make)
      @url = "/findmodelsbymake?make=#{make}&"
      call_model_api
    end

    def find_models_by_make_and_publication_state(make, state)
      # state should be "new", "used", etc..
      @url = "/findmodelsbymakeandpublicationstate?make=#{make}&state=#{state}&"
      call_model_api
    end

    def find_models_by_make_and_year(make, year)
      @url = "/findmodelsbymakeandyear?make=#{make}&year=#{year}&"
      call_model_api
    end

    def find_new_and_used_models_by_make_id(make_id)
      @url = "/findnewandusedmodelsbymakeid?makeid=#{make_id}&"
      call_model_api
    end

    def find_new_models_by_make_id(make_id)
      @url = "/findnewmodelsbymakeid?makeId=#{make_id}&"
      call_model_api
    end

    def find_used_models_by_make_id(make_id)
      @url = "/findusedmodelsbymakeid?makeId=#{make_id}&"
      call_model_api
    end

    private

    def call_model_api
      @base = "http://api.edmunds.com/v1/api/vehicle/modelrepository"
      call_api
      @json["modelHolder"]
    end

  end
end
