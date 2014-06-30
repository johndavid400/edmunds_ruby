module Edmunds
  class ModelYear < API
    class V2 < ModelYear

      def get_model_years_by_make_model(make, model, state=nil, view=nil, submodel=nil, category=nil)
        @url = "/#{make}/#{model}/years?"
        set_options(state, view, submodel, category)
        call_model_year_api
      end

      def get_style_by_make_model_year(make, model, year, state=nil, view=nil, submodel=nil, category=nil)
        @url = "/#{make}/#{model}/#{year}?"
        set_options(state, view, submodel, category)
        call_model_year_api
      end

      def get_count_by_make_model(make, model, state=nil, view=nil, submodel=nil, category=nil)
        @url = "/#{make}/#{model}/years/count?"
        set_options(state, view, submodel, category)
        call_model_year_api
      end

      private

      def set_options(state, view, submodel, category)
        options = ""
        options = options + "state=#{state}&" if state.present?
        options = options + "view=#{view}&" if view.present?
        options = options + "submodel=#{submodel}&" if submodel.present?
        options = options + "category=#{category}&" if category.present?
        @url += options
      end

      def call_model_year_api
        @base = "http://api.edmunds.com/api/vehicle/v2"
        call_api
      end

    end
  end
end
