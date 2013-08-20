module Nicovideo
  module DL
    class Download

      def self.er(options)
        download = new(options)
        download.start
      end

      def initialize(options)
        @user = options[:username]
        @pass = options[:password]
        @directory = options[:directory]
        @url = options[:url]
      end

      def start
        case @url
        when /(sm\d+)$/
          video_id $1
        when /\/mylist\/(\d+)$/
          mylist $1
        end
      end

      private
       def mylist(id)
       end

       def video_id(id)
         open("#{id}.flv", "w") do |fw|
           fw.puts nico.video(id).get_video
         end
       end

       def nico
         @nico ||= nico_instance
       end

       def nico_instance
         niconico = Niconico.new(@user, @pass)
         niconico.login
         niconico
       end
    end
  end
end
