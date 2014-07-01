module Edmunds
  class V2 < API

    def call_v2_api
      @base = "https://api.edmunds.com/api/vehicle/v2"
      call_api
    end

    def set_options(opts)
      options_string = ""
      opts.each do |k, v|
        options_string += "#{k.to_s}=#{v.to_s}&"
      end
      @url += options_string
    end

  end
end
