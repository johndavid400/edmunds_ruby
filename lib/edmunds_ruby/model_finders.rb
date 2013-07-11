module EdmundsRuby::ModelFinders

  # models
  def find_model_by_id(model_id)
    @url = "/modelrepository/findbyid?id=#{model_id}&"
    call_api
    @json["modelHolder"]
  end

  def find_models_by_make_id(make_id)
    @url = "/modelrepository/findbymakeid?makeid=#{make_id}&"
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
