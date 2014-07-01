module Edmunds
  class V2 < API
    class ModelYear < V2

        def get_model_years_by_make_model(make, model, options={})
          @url = "/#{make}/#{model}/years?"
          set_options(options)
          call_v2_api
        end

        def get_style_by_make_model_year(make, model, year, options={})
          @url = "/#{make}/#{model}/#{year}?"
          set_options(options)
          call_v2_api
        end

        def get_count_by_make_model(make, model, options={})
          @url = "/#{make}/#{model}/years/count?"
          set_options(options)
          call_v2_api
        end

    end
  end
end
