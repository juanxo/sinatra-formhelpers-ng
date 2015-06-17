require 'sinatra/base'
require 'sinatra/form_helpers'
require 'spec_helper'

RSpec.describe Sinatra::FormHelpers do
  let(:helpers) { Class.new { extend Sinatra::FormHelpers} }

  it "can create HTML tags" do
    expected = '<a href="/some/path">Home</a>'
    expect(helpers.tag(:a, "Home", href: '/some/path')).to eql(expected)
  end
end
