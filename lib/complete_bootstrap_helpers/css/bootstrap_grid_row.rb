module CompleteBootstrapHelpers
	def bootstrap_grid_row(options = {}, &block)
		div_classes = ["row"]
		div_classes << options.delete(:class)
		options[:class] = div_classes.join(" ")

		content_tag("div", nil, options) do
			capture(&block) if block_given?
		end
	end
end