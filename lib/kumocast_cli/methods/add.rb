module KumocastCli
  module Methods
    class Add
      class << self
        def post
          file_name = Prompt.get('file name', :String)
          number = Prompt.get('number', :Int)
          title = Prompt.get('title', :String)
          guests = Prompt.get('guests', :Array)
          topics = Prompt.get('topics', :Array)

          post = KumocastCli::Post.new do |p|
            # valid チェックしたい
            # file_name は a-z, A-Z, 0-9 とか
            p.file_name = file_name
            p.number = number
            p.title = title
            p.guests = guests
            p.topics = topics
          end

          puts post.content

          confirm = Prompt.get('Is this ok?', :Bool)

          if confirm
            post.save
            puts "\ncreated #{post.file_path}"
          else
            warn "\nAborted."
            exit(0)
          end
        end
      end
    end
  end
end
