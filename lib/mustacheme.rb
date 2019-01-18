require "mustacheme/version"

module Mustacheme
  class Error < StandardError; end

  extend self

  def on(path, output:)
    if url?(path)
      puts "url parsing not implemented yet"
    else
      Mustacheme::Image.new(path).process
    end
  end

  private

  def url?(path)
    /\A#{URI::regexp(['http', 'https'])}\z/.match?(path)
  end
end
