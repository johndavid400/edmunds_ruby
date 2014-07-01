module Edmunds
  class V2 < API
    class Engine < V2

        def get_engines_by_style_id(style_id, options={})
          @url = "/styles/#{style_id}/engines?"
          set_options(options)
          call_v2_api
        end

        def get_transmissions_by_style_id(style_id, options={})
          @url = "/styles/#{style_id}/transmissions?"
          set_options(options)
          call_v2_api
        end

        def get_engine_details_by_id(id)
          @url = "/engines/#{id}?"
          call_v2_api
        end

        def get_transmission_details_by_id(id)
          @url = "/transmissions/#{id}?"
          call_v2_api
        end

    end
  end
end
