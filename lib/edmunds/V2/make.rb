module Edmunds
  class V2 < API
    class Make < V2

        def get_makes(state=nil, year=nil, view=nil)
          @url = "/makes?"
          set_options(state, year, view)
          call_v2_api
        end

        def get_details_by_name(name, state=nil, year=nil, view=nil)
          @url = "/#{name}?"
          set_options(state, year, view)
          call_v2_api
        end

        def get_count(state=nil, year=nil, view=nil)
          @url = "/makes/count?"
          set_options(state, year, view)
          call_v2_api
        end

        private

        def set_options(state, year, view)
          options = ""
          options = options + "state=#{state}&" if state.present?
          options = options + "view=#{view}&" if view.present?
          options = options + "year=#{year}&" if year.present?
          @url += options
        end

    end
  end
end
