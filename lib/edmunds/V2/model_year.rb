module Edmunds
  class V2 < API
    class ModelYear < V2

        def get_model_years_by_make_model(make, model, options={})
          @url = "/#{make}/#{model}/years?"
          call_v2_api(options)
        end

        def get_style_by_make_model_year(make, model, year, options={})
          @url = "/#{make}/#{model}/#{year}?"
          call_v2_api(options)
        end

        def get_count_by_make_model(make, model, options={})
          @url = "/#{make}/#{model}/years/count?"
          call_v2_api(options)
        end

    end
  end
end
