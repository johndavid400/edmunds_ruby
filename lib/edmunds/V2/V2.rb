module Edmunds
  class V2 < API

    def call_v2_api(options)
      set_options(options) if options.present?
      @base = "https://api.edmunds.com/api/vehicle/v2"
      call_api
    end

    def set_options(options)
      options_string = ""
      options.each do |k, v|
        options_string += "#{k.to_s}=#{v.to_s}&"
      end
      @url += options_string
    end

  end
end
