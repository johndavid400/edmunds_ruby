module Edmunds
  class CostToOwn < API

    def new_true_cost_to_own(style_id, zip)
      @url = "/newtruecosttoownbystyleidandzip/#{style_id}/#{zip}?"
      call_tco_api
    end

    def used_true_cost_to_own(style_id, zip)
      @url = "/usedtruecosttoownbystyleidandzip/#{style_id}/#{zip}?"
      call_tco_api
    end

    def resale_values(style_id, zip)
      @url = "/resalevaluesbystyleidandzip/#{style_id}/#{zip}?"
      call_tco_api
    end

    def depreciation_used_rates(style_id, zip)
      @url = "/depreciation/usedratesbystyleidandzip/#{style_id}/#{zip}?"
      call_tco_api
    end

    def depreciation_new_rates(style_id, zip)
      @url = "/depreciation/newratesbystyleidandzip/#{style_id}/#{zip}?"
      call_tco_api
    end

    def new_total_cash_price(style_id, zip)
      @url = "/newtotalcashpricebystyleidandzip/#{style_id}/#{zip}?"
      call_tco_api
    end

    def used_true_cost_to_own(style_id, zip)
      @url = "/usedtotalcashpricebystyleidandzip/#{style_id}/#{zip}?"
      call_tco_api
    end

    def get_makes_with_tco_data
      @url = "/getmakeswithtcodata?"
      call_tco_api
    end

    def get_models_with_tco_data(make_id)
      @url = "/getmodelswithtcodata?makeid=#{make_id}&"
      call_tco_api
    end

    def get_styles_with_tco_data_by_submodel(make, model, year, submodel, make_year)
      @url = "/getmakeswithtcodata?make=#{make}&model=#{model}&year=#{year}&submodel=#{submodel}&makeyear=#{make_year}&"
      call_tco_api
    end

    private

    def call_tco_api
      @base = "http://api.edmunds.com/v1/api/tco"
      call_api
      @json
    end

  end
end
