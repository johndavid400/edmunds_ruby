module Edmunds
  class Photo < API

    def find_by_style_id(style_id)
      # get an array of images available from this style id
      @url = "photo/service/findphotosbystyleid?styleId=#{style_id}&"
      call_photo_api
      @json
    end

    def find_sample_by_style_id(style_id)
      # get the array of images, then sample one image from the group of exterior and front quarter panel (FQ) shots, then go ahead and append the base url so you can view the image directly.
      # if no sample is found, just return the entire array.
      if style_id.is_a?(Array)
        style_id.each do |id|
          fetch_image_groups(id)
          break if @json.present?
        end
      else
        fetch_image_groups(style_id)
      end
      select_group
      concatenate
    rescue
      @json
    end

    private

    def fetch_image_groups(style_id)
      @url = "photo/service/findphotosbystyleid?styleId=#{style_id}&"
      call_photo_api
    end

    def select_group
      exterior = @json.select{|s| s["subType"] == "exterior" }
      if exterior.present?
        # first try to get a front quarter panel shot "FQ"
        preferred = exterior.select{|s| s["shotTypeAbbreviation"] == "FQ" }
        # if not available try to get any quarter panel shot "Q"
        preferred = exterior.select{|s| s["shotTypeAbbreviation"].match(/Q/) } unless preferred.present?
        # if not available try to get a front shot "F"
        preferred = exterior.select{|s| s["shotTypeAbbreviation"] == "F" } unless preferred.present?
        # if not available try to get a side shot "S"
        preferred = exterior.select{|s| s["shotTypeAbbreviation"] == "S" } unless preferred.present?
        if preferred.present?
          selected = preferred.first
        else
          selected = exterior.first
        end
      else
        selected = @json.first
      end
      @sample = selected["photoSrcs"].select{|s| s.match(/\d{3}(.jpg)/) }.max
    end

    def concatenate
      @image = @image_base_url + @sample
    end

    def call_photo_api
      @base = "http://api.edmunds.com/v1/api/vehicle"
      call_api
    end

  end
end
