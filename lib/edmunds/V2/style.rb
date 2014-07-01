module Edmunds
  class V2 < API
    class Style < V2

        def get_style_by_style_id(style_id, options={})
          @url = "/styles/#{style_id}?"
          call_v2_api(options)
        end

        def get_style_by_make_model_year(make, model, year, options={})
          @url = "/#{make}/#{model}/#{year}/styles/?"
          call_v2_api(options)
        end

        def get_style_by_chrome_id(chrome_id, options={})
          @url = "/partners/chrome/styles/#{chrome_id}?"
          call_v2_api(options)
        end

        def get_style_count(options={})
          @url = "/styles/count?"
          call_v2_api(options)
        end

        def get_style_count_by_make(make, options={})
          @url = "/#{make}/styles/count?"
          call_v2_api(options)
        end

        def get_style_count_by_make_model(make, model, options={})
          @url = "/#{make}/#{model}/styles/count?"
          call_v2_api(options)
        end

        def get_style_count_by_make_model_year(make, model, year, options={})
          @url = "/#{make}/#{model}/#{year}/styles/count?"
          call_v2_api(options)
        end

    end
  end
end
