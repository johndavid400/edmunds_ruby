module Edmunds
  class V2 < API
    class Make < V2

        def get_makes(options={})
          @url = "/makes?"
          set_options(options)
          call_v2_api
        end

        def get_details_by_name(name, options={})
          @url = "/#{name}?"
          set_options(options)
          call_v2_api
        end

        def get_count(options={})
          @url = "/makes/count?"
          set_options(options)
          call_v2_api
        end

    end
  end
end
