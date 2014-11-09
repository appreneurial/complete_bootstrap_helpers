module CompleteBootstrapHelpers
	def bootstrap_meta_viewport(options = {})
		contents = []
		contents << "width=#{options[:width] ? options.delete(:width).to_s.dasherize : "device-width"}"
		contents << "initial-scale=#{options[:initial_scale] ? options.delete(:initial_scale) : 1}"
		contents << "maximum-scale=#{options.delete(:maximum_scale)}" if options[:maximum_scale]
		contents << "user-scalable=no" if options.delete(:user_scalable) == false

		content_tag("meta", nil, name: "viewport", content: contents.join(", "))
	end
end