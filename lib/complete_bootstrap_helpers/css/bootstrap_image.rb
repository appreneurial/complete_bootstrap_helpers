module CompleteBootstrapHelpers
	def bootstrap_image(options = {})
		img_classes = []
		img_classes << "img-responsive" if options.delete(:responsive) == true
		img_classes << "img-#{options.delete(:shape).to_s.dasherize}" if options[:shape]
		img_classes << options.delete(:class)
		options[:class] = img_classes.join(" ")

		content_tag("img", nil, options)
	end
end