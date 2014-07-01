module Edmunds
  class V2 < API
    class Rating < V2

        def get_ratings(style_id, options={})
          @url = "/styles/#{style_id}?"
          set_options(options)
          call_v2_api
        end

        private

        def call_v2_api
          @base = "https://api.edmunds.com/api/vehiclereviews/v2"
          call_api
        end

    end
  end
end
