require 'rails_helper'

describe CompleteBootstrapHelpers do
	let!(:options) { {} }

	describe "#bootstrap_image" do
		let(:output) { helper.bootstrap_image(options) }

		describe "with no options" do
			it "outputs img" do
				expect(output).to have_css("img")
			end
		end

		describe "with responsive: true" do
			before do
				options[:responsive] = true
			end

			it "outputs img.img-responsive" do
				expect(output).to have_css("img.img-responsive")
			end
		end
	end
end