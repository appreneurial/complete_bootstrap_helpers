module CompleteBootstrapHelpers
	def bootstrap_table(options = {}, &block)
		table_classes = ["table"]
		table_classes << "table-bordered" if options.delete(:bordered) == true
		table_classes << "table-condensed" if options.delete(:condensed) == true
		table_classes << "table-hover" if options.delete(:hover) == true
		table_classes << "table-striped" if options.delete(:striped) == true
		table_classes << options.delete(:class)
		options[:class] = table_classes.join(" ")

		table_output = content_tag("table", nil, options) do
			capture(&block) if block_given?
		end

		if options.delete(:responsive) == true
			content_tag("div", nil, class: "table-responsive") do
				table_output
			end
		else
			table_output
		end
	end
end