module Edmunds
  class V2 < API
    class Option < V2

        def get_colors_by_style_id(style_id, options={})
          @url = "/styles/#{style_id}/colors?"
          set_options(options)
          call_v2_api
        end

        def get_options_by_style_id(style_id, options={})
          @url = "/styles/#{style_id}/options?"
          set_options(options)
          call_v2_api
        end

        def get_color_details_by_id(id)
          @url = "/colors/#{id}?"
          call_v2_api
        end

        def get_option_details_by_id(id)
          @url = "/options/#{id}?"
          call_v2_api
        end

    end
  end
end
