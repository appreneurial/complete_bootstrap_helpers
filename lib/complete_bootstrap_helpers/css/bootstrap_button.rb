module CompleteBootstrapHelpers
	def bootstrap_button(text, options = {})
		button_classes = ["btn"]
		button_classes << (options[:style] ? "btn-#{options.delete(:style).to_s.dasherize}" : "btn-default")
		button_classes << options.delete(:class)
		options[:class] = button_classes.join(" ")

		options[:type] = options.delete(:button)
		options[:type] ||= "button"

		content_tag("button", nil, options) do
			text
		end
	end
end