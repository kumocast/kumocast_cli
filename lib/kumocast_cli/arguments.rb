module KumocastCli
  class Arguments
    def initialize(argv)
      @argv = argv
    end

    def method_name
      @argv[0]
    end

    def capitalized_method_name
      method_name.capitalize
    end

    def type_name
      @argv[1]
    end

    def valid?
      has_valid_method_name? && has_valid_type_name?
    end

    private

    def has_valid_method_name?
      if method_name == nil
        # TODO: ヘルプを表示しよう
        warn 'Should input method'
        return false
      end

      # クラス名として探索するために capitalize する
      # cli において add というメソッドがあるか => Methods::Add が存在するか
      unless KumocastCli::Methods.const_defined?(capitalized_method_name.to_sym)
        warn 'undefined method'
        return false
      end

      true
    end

    def has_valid_type_name?
      if type_name == nil
        # TODO: メソッドに対するタイプを羅列したい
        warn 'type none'
        return false
      end

      exist_type_exp = "defined? KumocastCli::Methods::#{capitalized_method_name}.#{type_name}"
      unless eval(exist_type_exp)
        warn 'undefined type'
        return false
      end

      true
    end
  end
end
