module Edmunds
  class Model < API
    class V2 < Model

      def find_models_by_make(make, state=nil, year=nil, view=nil, submodel=nil, category=nil)
        @url = "/#{make}/models?"
        set_options(state, year, view, submodel, category)
        call_model_api
      end

      def find_details_by_make_and_model(make, model, state=nil, year=nil, view=nil, submodel=nil, category=nil)
        @url = "/#{make}/#{model}?"
        set_options(state, year, view, submodel, category)
        call_model_api
      end

      def get_count(make, state=nil, year=nil, view=nil, submodel=nil, category=nil)
        @url = "/#{make}/models/count?"
        set_options(state, year, view, submodel, category)
        call_model_api
      end

      private

      def set_options(state, year, view, submodel, category)
        options = ""
        options = options + "state=#{state}&" if state.present?
        options = options + "view=#{view}&" if view.present?
        options = options + "year=#{year}&" if year.present?
        options = options + "submodel=#{submodel}&" if submodel.present?
        options = options + "category=#{category}&" if category.present?
        @url += options
      end

      def call_model_api
        @base = "https://api.edmunds.com/api/vehicle/v2"
        call_api
      end

    end
  end
end
