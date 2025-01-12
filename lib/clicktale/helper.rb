module Clicktale
  module Helper
    def clicktale_top
      return unless clicktale_enabled?
      render :partial => "clicktale/top.html.erb"
    end

    def clicktale_bottom
      return unless clicktale_enabled?

      render :partial => "clicktale/bottom.html.erb", :locals => {
        :project_id => clicktale_config[:project_id],
        :path => clicktale_url,
        :ratio => clicktale_config[:ratio] || 1,
        :tag => clicktale_config[:tag],
        :param => clicktale_config[:param]
      }
    end
  end
end
