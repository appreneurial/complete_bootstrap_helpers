require 'rails_helper'

describe CompleteBootstrapHelpers do
	let!(:options) { {} }
	let!(:block) { "This is the block content" }

	describe "#bootstrap_container" do
		let(:output) { helper.bootstrap_container(options) { block } }

		describe "with no options" do
			it "outputs div.container containing block" do
				expect(output).to have_css("div.container", text: block)
			end
		end

		describe "with fluid: true" do
			before do
				options[:fluid] = true
			end

			it "outputs div.container-fluid containing block" do
				expect(output).to have_css("div.container-fluid", text: block)
			end
		end
	end

	describe "#bootstrap_meta_viewport" do
		let(:output) { helper.bootstrap_meta_viewport(options) }

		describe "with no options" do
			it "outputs meta[name='viewport'][content='width=device-width, initial-scale=1']" do
				expect(output).to have_css("meta[name='viewport'][content='width=device-width, initial-scale=1']", visible: false)
			end
		end

		describe "with initial_scale: 2" do
			before do
				options[:initial_scale] = 2
			end

			it "outputs meta[name='viewport'][content='width=device-width, initial-scale=2']" do
				expect(output).to have_css("meta[name='viewport'][content='width=device-width, initial-scale=2']", visible: false)
			end
		end

		describe "with maximum_scale: 1" do
			before do
				options[:maximum_scale] = 1
			end

			it "outputs meta[name='viewport'][content='width=device-width, initial-scale=1, maximum-scale=1']" do
				expect(output).to have_css("meta[name='viewport'][content='width=device-width, initial-scale=1, maximum-scale=1']", visible: false)
			end
		end

		describe "with user_scalable: false" do
			before do
				options[:user_scalable] = false
			end

			it "outputs meta[name='viewport'][content='width=device-width, initial-scale=1, user-scalable=no']" do
				expect(output).to have_css("meta[name='viewport'][content='width=device-width, initial-scale=1, user-scalable=no']", visible: false)
			end
		end

		describe "with width: :symbol_value" do
			before do
				options[:width] = :symbol_value
			end

			it "outputs meta[name='viewport'][content='width=symbol-value, initial-scale=1']" do
				expect(output).to have_css("meta[name='viewport'][content='width=symbol-value, initial-scale=1']", visible: false)
			end
		end
	end
end