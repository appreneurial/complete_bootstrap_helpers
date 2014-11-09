module CompleteBootstrapHelpers
	def bootstrap_table(options = {}, &block)
		table_classes = ["table"]
		table_classes << "table-striped" if options.delete(:striped) == true
		table_classes << options.delete(:class)
		options[:class] = table_classes.join(" ")
		
		content_tag("table", nil, options) do
			capture(&block) if block_given?
		end
	end
end