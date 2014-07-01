module Edmunds
  class V2 < API
    class Style < V2

        def get_style_by_style_id(style_id, options={})
          @url = "/styles/#{style_id}?"
          set_options(options)
          call_v2_api
        end

        def get_style_by_make_model_year(make, model, year, options={})
          @url = "/#{make}/#{model}/#{year}/styles/?"
          set_options(options)
          call_v2_api
        end

        def get_style_by_chrome_id(chrome_id)
          @url = "/partners/chrome/styles/#{chrome_id}?"
          call_v2_api
        end

        def get_style_count(options={})
          @url = "/styles/count?"
          set_options(options)
          call_v2_api
        end

        def get_style_count_by_make(make, options={})
          @url = "/#{make}/styles/count?"
          set_options(options)
          call_v2_api
        end

        def get_style_count_by_make_model(make, model, options={})
          @url = "/#{make}/#{model}/styles/count?"
          set_options(options)
          call_v2_api
        end

        def get_style_count_by_make_model_year(make, model, year, options={})
          @url = "/#{make}/#{model}/#{year}/styles/count?"
          set_options(options)
          call_v2_api
        end

    end
  end
end
