require 'rails_helper'

describe CompleteBootstrapHelpers do
	let!(:options) { {} }
	let!(:text) { "Button Text" }

	describe "#bootstrap_button" do
		let(:output) { helper.bootstrap_button(text, options) }

		describe "with no options" do
			it "outputs button.btn.btn-default[type='button'] containing text" do
				expect(output).to have_css("button.btn.btn-default[type='button']", text: text)
			end
		end

		describe "with style: :primary" do
			before do
				options[:style] = :primary
			end

			it "outputs button.btn.btn-primary[type='button'] containing text" do
				expect(output).to have_css("button.btn.btn-primary[type='button']", text: text)
			end
		end
	end
end