module Edmunds
  class V2 < API
    class Grade < V2

      def get_grade_by_make_model_year_submodel(make, model, year, submodel, options={})
        @url = "/grade/#{make}/#{model}/#{year}?#{submodel}&"
        call_v2_api(options)
      end

      def get_grade_by_style_id(style_id, options={})
        @url = "/grade/#{style_id}?"
        call_v2_api(options)
      end

    end
  end
end
