module Edmunds
  class V2 < API
    class ModelYear < V2

        def get_model_years_by_make_model(make, model, state=nil, view=nil, submodel=nil, category=nil)
          @url = "/#{make}/#{model}/years?"
          set_options(state, view, submodel, category)
          call_v2_api
        end

        def get_style_by_make_model_year(make, model, year, state=nil, view=nil, submodel=nil, category=nil)
          @url = "/#{make}/#{model}/#{year}?"
          set_options(state, view, submodel, category)
          call_v2_api
        end

        def get_count_by_make_model(make, model, state=nil, view=nil, submodel=nil, category=nil)
          @url = "/#{make}/#{model}/years/count?"
          set_options(state, view, submodel, category)
          call_v2_api
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

    end
  end
end
