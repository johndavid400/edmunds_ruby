module Edmunds
  class V2 < API
    class Engine < V2

        def get_engines_by_style_id(style_id, availability=nil, name=nil)
          @url = "/styles/#{style_id}/engines?"
          set_options(availability, name)
          call_v2_api
        end

        def get_transmissions_by_style_id(style_id, availability=nil, name=nil)
          @url = "/styles/#{style_id}/transmissions?"
          set_options(availability, name)
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

        private

        def set_options(availability, name)
          options = ""
          options = options + "availability=#{availability}&" if name.present?
          options = options + "name=#{name}&" if name.present?
          @url += options
        end

    end
  end
end
