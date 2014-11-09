require 'rails_helper'

describe CompleteBootstrapHelpers do
	let!(:options) { {} }
	let!(:block) { "This is the block content" }

	describe "#bootstrap_grid_column" do
		let(:output) { helper.bootstrap_grid_column(options) { block } }

		describe "with offset: {sm: 3, md: 2}" do
			before do
				options[:offset] = {sm: 3, md: 2}
			end

			it "outputs div.col-sm-offset-3.col-md-offset-2 containing block" do
				expect(output).to have_css("div.col-sm-offset-3.col-md-offset-2", text: block)
			end
		end

		describe "with pull: {sm: 3, md: 2}" do
			before do
				options[:pull] = {sm: 3, md: 2}
			end

			it "outputs div.col-sm-pull-3.col-md-pull-2 containing block" do
				expect(output).to have_css("div.col-sm-pull-3.col-md-pull-2", text: block)
			end
		end

		describe "with push: {sm: 3, md: 2}" do
			before do
				options[:push] = {sm: 3, md: 2}
			end

			it "outputs div.col-sm-push-3.col-md-push-2 containing block" do
				expect(output).to have_css("div.col-sm-push-3.col-md-push-2", text: block)
			end
		end

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