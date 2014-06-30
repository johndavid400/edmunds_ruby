module Edmunds
  class Model < API
    class V2 < Model

      def get_models_by_make(make, state=nil, year=nil, view=nil, submodel=nil, category=nil)
        @url = "/#{make}/models?"
        set_options(state, year, view, submodel, category)
        call_v2_api
      end

      def get_details_by_make_and_model(make, model, state=nil, year=nil, view=nil, submodel=nil, category=nil)
        @url = "/#{make}/#{model}?"
        set_options(state, year, view, submodel, category)
        call_v2_api
      end

      def get_count_by_make(make, state=nil, year=nil, view=nil, submodel=nil, category=nil)
        @url = "/#{make}/models/count?"
        set_options(state, year, view, submodel, category)
        call_v2_api
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

    end
  end
end
