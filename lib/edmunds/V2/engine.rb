module Edmunds
  class V2 < API
    class Engine < V2

        def get_engines_by_style_id(style_id, options={})
          @url = "/styles/#{style_id}/engines?"
          call_v2_api(options)
        end

        def get_transmissions_by_style_id(style_id, options={})
          @url = "/styles/#{style_id}/transmissions?"
          call_v2_api(options)
        end

        def get_engine_details_by_id(id, options={})
          @url = "/engines/#{id}?"
          call_v2_api(options)
        end

        def get_transmission_details_by_id(id, options={})
          @url = "/transmissions/#{id}?"
          call_v2_api(options)
        end

    end
  end
end
