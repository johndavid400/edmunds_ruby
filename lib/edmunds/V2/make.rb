module Edmunds
  class V2 < API
    class Make < V2

        def get_makes(options={})
          @url = "/makes?"
          call_v2_api(options)
        end

        def get_details_by_name(name, options={})
          @url = "/#{name}?"
          call_v2_api(options)
        end

        def get_count(options={})
          @url = "/makes/count?"
          call_v2_api(options)
        end

    end
  end
end
