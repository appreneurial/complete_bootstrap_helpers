require 'rails_helper'

describe CompleteBootstrapHelpers do
	let!(:options) { {} }
	let!(:block) { "This is the block content" }

	describe "#bootstrap_table" do
		let(:output) { helper.bootstrap_table(options) { block } }

		describe "with no options" do
			it "outputs table.table containing block" do
				expect(output).to have_css("table.table", text: block)
			end
		end
	end
end