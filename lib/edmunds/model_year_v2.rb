module Edmunds
  class ModelYear < API
    class V2 < ModelYear

      def foo
      end

      private

      def set_options(state, year, view)
        options = ""
        options = options + "state=#{state}&" if state.present?
        options = options + "view=#{view}&" if view.present?
        options = options + "year=#{year}&" if year.present?
        @url += options
      end

      def call_make_api
        @base = "http://api.edmunds.com/api/vehicle/v2"
        call_api
      end

    end
  end
end
