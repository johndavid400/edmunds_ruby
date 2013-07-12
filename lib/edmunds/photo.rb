module Edmunds
  class Photo < API

    # get an array of images available from this style id
    def find_by_style_id(style_id)
      @url = "photo/service/findphotosbystyleid?styleId=#{style_id}&"
      call_photo_api
      @json
    end

    # get the array of images, then sample one image from the group of exterior and front quarter panel (FQ) shots, then go ahead and append the base url so you can view the image directly.
    # if no sample is found, just return the entire array.
    def find_sample_by_style_id(style_id)
      @url = "photo/service/findphotosbystyleid?styleId=#{style_id}&"
      call_photo_api
      @image = @image_base_url + @json.select{|s| s["subType"] == "exterior" && s["shotTypeAbbreviation"] == "FQ" }.first["photoSrcs"].select{|s| s.match(/\d{3}(.jpg)/) }.max
    rescue
      @json
    end

    private

    def call_photo_api
      @base = "http://api.edmunds.com/v1/api/vehicle"
      call_api
    end

  end
end
