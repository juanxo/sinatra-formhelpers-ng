require 'sinatra/base'
require 'sinatra/form_helpers'
require 'spec_helper'

RSpec.describe Sinatra::FormHelpers do
  let(:fh) { Class.new { extend Sinatra::FormHelpers} }

  describe "#tag" do
    it "creates HTML tags" do
      expected = '<a href="/some/path">Home</a>'
      expect(fh.tag(:a, "Home", href: '/some/path')).to eql(expected)
    end
  end

  describe "#hash_to_html_attrs" do
    it "creates HTML attribute strings from a hash" do
      expected = 'href="/some/path" id="some-id"'
      expect(fh.hash_to_html_attrs(href: '/some/path', id: 'some-id')).to eql(expected)
    end

    it "skips empty attributes" do
      expected = 'href="/some/path"'
      expect(fh.hash_to_html_attrs(href: '/some/path', id: nil)).to eql(expected)
    end
  end

  describe "#link" do
    it "creates an anchor tag" do
      expected = '<a href="http://google.com/">http://google.com/</a>'
      expect(fh.link("http://google.com/")).to eql(expected)
    end

    it "accepts custom anchor tag content" do
      expected = '<a href="http://google.com/">Google</a>'
      expect(fh.link("Google", "http://google.com/")).to eql(expected)
    end

    it "adds additional attributes" do
      expected = '<a class="link" href="http://google.com/">Google</a>'
      expect(fh.link("Google", "http://google.com/", class: "link")).to eql(expected)
    end
  end
end
