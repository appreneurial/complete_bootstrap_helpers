module CompleteBootstrapHelpers
	def bootstrap_grid_column(options = {}, &block)
		div_classes = []
		options.delete(:offset).each do |key, value|
			div_classes << "col-#{key}-offset-#{value}"
		end if options[:offset]
		options.delete(:pull).each do |key, value|
			div_classes << "col-#{key}-pull-#{value}"
		end if options[:pull]
		options.delete(:push).each do |key, value|
			div_classes << "col-#{key}-push-#{value}"
		end if options[:push]
		options.delete(:size).each do |key, value|
			div_classes << "col-#{key}-#{value}"
		end if options[:size]
		div_classes << options.delete(:class)
		options[:class] = div_classes.join(" ")

		content_tag("div", nil, options) do
			capture(&block) if block_given?
		end
	end
end