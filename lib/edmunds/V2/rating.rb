module Edmunds
  class V2 < API
    class Rating < V2

        def get_ratings_by_style_id(style_id, options={})
          @url = "/styles/#{style_id}?"
          call_v2_api(options)
        end

        def get_ratings_by_make_model_year(make, model, year, options={})
          @url = "/#{make}/#{model}/#{year}?"
          call_v2_api(options)
        end

        def get_ratings_by_id(review_id, options={})
          @url = "/#{review_id}?"
          call_v2_api(options)
        end

        private

        def call_v2_api(options)
          set_options(options) if options.present?
          @base = "https://api.edmunds.com/api/vehiclereviews/v2"
          call_api
        end

    end
  end
end
