module EdmundsRuby::ImageFinders

  def get_image(style_id)
    @url = "photo/service/findphotosbystyleid?styleId=#{style_id}&"
    call_api
    @image = @image_base_url + @json.select{|s| s["subType"] == "exterior" && s["shotTypeAbbreviation"] == "FQ" }.first["photoSrcs"].select{|s| s.match(/\d{3}(.jpg)/) }.max
  rescue
    "http://webmuseum.mit.edu/mobiusicons/no_image.jpg"
  end

  def get_images(style_id)
    @url = "photo/service/findphotosbystyleid?styleId=#{style_id}&"
    call_api
    @images = []
    @json.each do |image|
      if image["photoSrcs"].select{|s| s.match(/\d{3}(.jpg)/) }.present?
        @images.push(@image_base_url + image["photoSrcs"].select{|s| s.match(/\d{3}(.jpg)/) }.max)
      end
    end
    @images
  rescue
    if @images.present?
      @images
    else
      ["http://webmuseum.mit.edu/mobiusicons/no_image.jpg"]
    end
  end

end
