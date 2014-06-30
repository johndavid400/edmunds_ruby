module Edmunds
  class Style < API
    class V2 < Style

      def get_style_by_style_id(style_id, view=nil)
        @url = "/styles/#{style_id}?"
        set_options(state=nil, view, submodel=nil, category=nil)
        call_style_api
      end

      def get_style_by_make_model_year(make, model, year, state=nil, view=nil, submodel=nil, category=nil)
        @url = "/#{make}/#{model}/#{year}/styles/?"
        set_options(state, view, submodel, category)
        call_style_api
      end

      def get_style_by_chrome_id(chrome_id)
        @url = "/partners/chrome/styles/#{chrome_id}?"
        call_style_api
      end

      def get_style_count(state=nil)
        @url = "/styles/count?"
        set_options(state, view=nil, submodel=nil, category=nil)
        call_style_api
      end

      def get_style_count_by_make(make, state=nil)
        @url = "/#{make}/styles/count?"
        set_options(state, view=nil, submodel=nil, category=nil)
        call_style_api
      end

      def get_style_count_by_make_model(make, model, state=nil)
        @url = "/#{make}/#{model}/styles/count?"
        set_options(state, view=nil, submodel=nil, category=nil)
        call_style_api
      end

      def get_style_count_by_make_model_year(make, model, year, state=nil)
        @url = "/#{make}/#{model}/#{year}/styles/count?"
        set_options(state, view=nil, submodel=nil, category=nil)
        call_style_api
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

      def call_style_api
        @base = "https://api.edmunds.com/api/vehicle/v2"
        call_api
      end

    end
  end
end
