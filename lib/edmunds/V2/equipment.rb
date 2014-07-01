module Edmunds
  class V2 < API
    class Equipment < V2

        def get_equipment_by_style_id(style_id, options={})
          @url = "/styles/#{style_id}/equipment?"
          set_options(options)
          call_v2_api
        end

        def get_equipment_details_by_id(id)
          @url = "/equipment/#{id}?"
          call_v2_api
        end

    end
  end
end
