require 'rails_helper'

describe CompleteBootstrapHelpers do
	let!(:options) { {} }
	let!(:block) { "This is the block content" }

	describe "#bootstrap_grid_column" do
		let(:output) { helper.bootstrap_grid_column(options) { block } }

		describe "with size: {xs: 12, sm: 6, md: 8}" do
			before do
				options[:size] = {xs: 12, sm: 6, md: 8}
			end

			it "outputs div.col-xs-12.col-sm-6.col-md-8 containing block" do
				expect(output).to have_css("div.col-xs-12.col-sm-6.col-md-8", text: block)
			end
		end
	end

	describe "#bootstrap_grid_row" do
		let(:output) { helper.bootstrap_grid_row { block } }

		it "outputs div.row containing block" do
			expect(output).to have_css("div.row", text: block)
		end
	end
end