module Edmunds
  class V2 < API
    class Model < V2

        def get_models_by_make(make, options={})
          @url = "/#{make}/models?"
          set_options(options)
          call_v2_api
        end

        def get_details_by_make_and_model(make, model, options={})
          @url = "/#{make}/#{model}?"
          set_options(options)
          call_v2_api
        end

        def get_count_by_make(make, options={})
          @url = "/#{make}/models/count?"
          set_options(options)
          call_v2_api
        end

    end
  end
end
