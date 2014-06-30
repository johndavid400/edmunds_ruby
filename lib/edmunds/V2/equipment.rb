module Edmunds
	class Equipment < API
    class V2 < Equipment

      def get_equipment_by_style_id(style_id, availability=nil, equipment_type=nil, name=nil)
        @url = "/styles/#{style_id}/equipment?"
        set_options(availability, equipment_type, name)
        call_v2_api
      end

      def get_equipment_details_by_id(id)
        @url = "/equipment/#{id}?"
        call_v2_api
      end

      private

      def set_options(availability, equipment_type, name)
        options = ""
        options = options + "availability=#{availability}&" if availability.present?
        options = options + "equipmentType=#{equipment_type}&" if equipment_type.present?
        options = options + "name=#{name}&" if name.present?
        @url += options
      end

    end
  end
end
