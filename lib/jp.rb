require "jp/version"
require 'mecab'
require 'langue-japanese'

module Jp
  def self.parse text
    japanese.parse(text).map{|morpheme| morpheme.text}
  end

  private 
  def self.japanese
    @japanese ||= Langue['japanese'].new
  end
end
