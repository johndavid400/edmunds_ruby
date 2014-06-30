module Edmunds
  class VIN < API

    class Squish < VIN
      def get_details_by_squish_vin(squish_vin)
        @url = "/squishvins/#{squish_vin}?"
        call_v2_api
      end
    end

    class Decode < VIN
      def get_details_by_vin(vin, manufacturer_code=nil)
        @url = "/vins/#{squish_vin}?"
        set_options(code)
        call_v2_api
      end

      private

      def set_options(code)
        options = ""
        options = options + "manufacturerCode=#{code}&" if code.present?
        @url += options
      end
    end

  end
end
