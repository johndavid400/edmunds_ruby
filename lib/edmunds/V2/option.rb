module Edmunds
  class Option < API
    class V2 < Option

      def get_colors_by_style_id(style_id, category=nil)
        @url = "/styles/#{style_id}/colors?"
        set_options(category)
        call_v2_api
      end

      def get_options_by_style_id(style_id, category=nil)
        @url = "/styles/#{style_id}/options?"
        set_options(category)
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

      private

      def set_options(category)
        options = ""
        options = options + "category=#{category}&" if category.present?
        @url += options
      end

    end
  end
end
