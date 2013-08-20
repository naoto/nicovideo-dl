require "nicovideo/dl/version"

module Nicovideo
  module DL
    # Your code goes here...
    require 'nicovideo/dl/option'
    require 'nicovideo/dl/download'

    require 'niconico'
    def self.start(arg)
      Download.er(Option.parse(arg))
    end

  end
end
