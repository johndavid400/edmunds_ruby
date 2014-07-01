module Edmunds
  class Equipment < API

    def find_engines_by_style_id(style_id)
      @url = "/findenginesbystyleid?styleid=#{style_id}&"
      call_equipment_api
    end

    def find_transmissions_by_style_id(style_id)
      @url = "/findtransmissionsbystyleid?styleid=#{style_id}&"
      call_equipment_api
    end

    private

    def call_equipment_api
      @base = "http://api.edmunds.com/v1/api/vehicle/equipmentrepository"
      call_api
      @json
    end

  end
end
