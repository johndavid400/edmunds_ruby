module Edmunds
  class Make < API
    class V2 < Make

      def get_makes(state=nil, year=nil, view=nil)
        @url = "/makes?"
        set_options(state, year, view)
        call_make_api
      end

      def get_details_by_name(name, state=nil, year=nil, view=nil)
        @url = "/#{name}?"
        set_options(state, year, view)
        call_make_api
      end

      def get_count(state=nil, year=nil, view=nil)
        @url = "/makes/count?"
        set_options(state, year, view)
        call_make_api
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
