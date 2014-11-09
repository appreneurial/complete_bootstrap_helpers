module CompleteBootstrapHelpers
	def bootstrap_grid_column(options = {}, &block)
		div_classes = []
		options[:offset].each do |key, value|
			div_classes << "col-#{key}-offset-#{value}"
		end if options[:offset]
		options[:size].each do |key, value|
			div_classes << "col-#{key}-#{value}"
		end if options[:size]
		div_classes << options.delete(:class)
		options[:class] = div_classes.join(" ")

		content_tag("div", nil, options) do
			capture(&block) if block_given?
		end
	end
end