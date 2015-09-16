module KumocastCli
  class Post
    attr_accessor :file_name, :number, :title, :guests, :topics

    DIR_PATH = File.expand_path('./_posts')
    TEMPLATE_PATH = File.expand_path('../templates/post.md.erb', __FILE__)

    def initialize
      yield self if block_given?
    end

    def save
      f = open(file_path, "w")

      f.puts content
      f.close
    end

    def content
      erbf = ERB.new(File.read(TEMPLATE_PATH))
      erbf.result(binding)
    end

    def file_path
      formatted_date = datetime.strftime('%Y-%m-%d')
      "#{DIR_PATH}/#{formatted_date}-#{file_name}.md"
    end

    private

    def members
      g = guests
      g.push('gaaamii', 'karur4n')
    end

    def datetime
      @datetime ||= DateTime.now
    end

    def audio_file
      formatted_number = sprintf('%02d', number)
      "#{formatted_number}.mp3"
    end

    def stringify_topics
      topics.join(', ')
    end
  end
end
