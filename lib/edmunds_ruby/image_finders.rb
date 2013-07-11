module EdmundsRuby::ImageFinders

  # get an array of images available from this style id
  def get_images(style_id)
    @url = "photo/service/findphotosbystyleid?styleId=#{style_id}&"
    call_api
    @json
  end

  # get the array of images, then sample one image from the group of exterior and front quarter panel (FQ) shots, then go ahead and append the base url so you can view the image directly.
  # if no sample is found, just return the entire array.
  def get_sample_image(style_id)
    @url = "photo/service/findphotosbystyleid?styleId=#{style_id}&"
    call_api
    @image = @image_base_url + @json.select{|s| s["subType"] == "exterior" && s["shotTypeAbbreviation"] == "FQ" }.first["photoSrcs"].select{|s| s.match(/\d{3}(.jpg)/) }.max
  rescue
    @json
  end


end
