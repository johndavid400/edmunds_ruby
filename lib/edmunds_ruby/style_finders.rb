module EdmundsRuby::StyleFinders

  # styles
  def get_model_year_styles(model_year_id)
    @url = "/stylerepository/findstylesbymodelyearid?modelyearid=#{model_year_id}&"
    call_api
  end

  def trim_info(style_id)
    @url = "/stylerepository/findbyid?id=#{style_id}&"
    call_api
  end

end
