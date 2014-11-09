module CompleteBootstrapHelpers
	def bootstrap_container(options = {}, &block)
		div_classes = []
		div_classes << (options.delete(:fluid) == true ? "container-fluid" : "container")
		div_classes << options.delete(:class)
		options[:class] = div_classes.join(" ")

		content_tag("div", nil, options) do
			capture(&block) if block_given?
		end
	end
end