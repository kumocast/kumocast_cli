module KumocastCli
  class Prompt
    class << self
      def get(str, type)
        if type == :Bool
          print "#{str} (y/n): "
        else
          print "#{str}: "
        end

        input = STDIN.gets.chomp

        case type
          when :String
            input
          when :Int
            input.to_i
          when :Bool
            case input
              when 'y'
                true
              when 'n'
                false
              else
                Prompt.get(str, type)
            end
          when :Array
            input.gsub(',', ' ').split(/\s+/)
        end
      end
    end
  end
end
