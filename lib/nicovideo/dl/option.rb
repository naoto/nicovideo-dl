require 'optparse'

module Nicovideo
  module DL
    class Option < Hash

      def self.parse(args)
        option = new({})
        op = OptionParser.new
        op.on('-u','--username VAL'){ |v| option[:username] = v }
        op.on('-p','--password VAL'){ |v| option[:password] = v }
        op.on('-d','--directory VAL'){ |v| option[:directory] = v }
        op.permute!(args)
        option[:url] = ARGV.first unless ARGV.first.nil?
        option
      end

    end
  end
end
