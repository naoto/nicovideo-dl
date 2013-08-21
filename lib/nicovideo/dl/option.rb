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

        if option[:username].empty? || option[:password].empty?
          config = Pit.get("nicovideo.com", :require => {
            "username" => "please nicovideo username",
            "password" => "please nicovideo password"
          })
          option[:username] = config["username"]
          option[:password] = config["password"]
        end

        option
      end

    end
  end
end
