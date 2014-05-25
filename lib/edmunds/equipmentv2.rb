module Edmunds
	class EquipmentV2 < API
    def find_by_style_id(style_id)
      @base = "https://api.edmunds.com/api/vehicle/v2"
      @url = "/styles/#{style_id}/equipment?"
      call_api
      @json['equipment']
    rescue
      return false
    end
  end
end