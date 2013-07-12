module Edmunds
  class Maintenance < API

    def action(id)
      @url = "/action/#{id}?"
      call_maintenance_api
    end

    def find_action_by_model_year_id(model_year_id)
      @url = "/actionrepository/findbymodelyearid?modelyearid=#{model_year_id}&"
      call_maintenance_api
    end

    def find_model_year_ids_with_maintenance_schedule
      @url = "/actionrepository/findmodelyearidswithmaintenanceschedule?"
      call_maintenance_api
    end

    def recall(id)
      @url = "/recall/#{id}?"
      call_maintenance_api
    end

    def find_recall_by_model_year_id(model_year_id)
      @url = "/recallrepository/findbymodelyearid?modelyearid=#{model_year_id}&"
      call_maintenance_api
    end

    def service_bulletin(id)
      @url = "/servicebulletin/#{id}?"
      call_maintenance_api
    end

    def find_service_bulletin_by_model_year_id(model_year_id)
      @url = "/servicebulletinrepository/findbymodelyearid?modelyearid=#{model_year_id}&"
      call_maintenance_api
    end

    def styles_notes(style_id)
      @url = "/stylesnotes/#{style_id}?"
      call_maintenance_api
    end

    def zip_labor_rate(zip)
      @url = "/ziplaborrate/#{zip}?"
      call_maintenance_api
    end

    private

    def call_maintenance_api
      @base = "http://api.edmunds.com/v1/api/maintenance"
      call_api
      @json
    end

  end
end
