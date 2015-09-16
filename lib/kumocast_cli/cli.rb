module KumocastCli
  class CLI

    class << self
      def start(argv)
        @argv = argv

        if arguments.valid?
          exp = "KumocastCli::Methods::#{arguments.capitalized_method_name}.#{arguments.type_name}"
          eval(exp)
        end
      end

      private

      def arguments
        @arguments ||= Arguments.new(@argv)
      end
    end
  end
end
