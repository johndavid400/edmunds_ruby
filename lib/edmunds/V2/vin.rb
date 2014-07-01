module Edmunds
  class V2 < API
    class VIN < API

      class Squish < VIN
        def get_details_by_squish_vin(squish_vin)
          @url = "/squishvins/#{squish_vin}?"
          call_v2_api
        end
      end

      class Decode < VIN
        def get_details_by_vin(vin, options={})
          @url = "/vins/#{squish_vin}?"
          set_options(options)
          call_v2_api
        end
      end

    end
  end
end
