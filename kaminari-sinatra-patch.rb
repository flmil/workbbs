re 'active_support/core_ext/object'
require 'active_support/core_ext/string'
require 'action_dispatch/http/mime_type'

begin

	require 'padrino-helpers'
	module Kaminari::Helpers
		module SinatraHelpers
			class ActionViewTemplateProxy
				def url_for(params)
					extra_params = {}
					if (page = params[@param_name]) && page != 1
						#元は、  if (page = params[@param_name]) && (Kaminari.config.params_on_first_page || page != 1)
						extra_params[@param_name] = page
					end
					query = @current_params.merge(extra_params)
					@current_path + (query.empty? ? '' : "?#{query.to_query}")
				end
			end
		end
	end

end
