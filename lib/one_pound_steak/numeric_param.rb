module OnePoundSteak
  class NumericParam
    # 整数値チェック
    def integer(num, name = 'integer')
      Common.regex_check(name, num, Regex::VALID_INTEGER)
    end

    # 自然数チェック
    def natural_number(num, name = 'integer')
      Common.regex_check(name, num, Regex::VALID_NUTURAL_NUMBER)
    end

    ## 数値系
    def between_number(num, min, max, name = 'number_size')
      # この値がoffset以上limit未満 
      return Common.state(false, name+'が取得できませんでした') if num.nil? || min.nil? || max.nil?
      return Common.state(false, name+'に無効な型が入力されました') unless num.kind_of?(Integer) && min.kind_of?(Integer) && max.kind_of?(Integer)
      return Common.state(false, name+'は' + min.to_s + '以上の値を入力してください') unless min < num
      return Common.state(false, name+'は' + max.to_s + '以下の値を入力してください') unless num < max
      Common.state(true , 'ok '+name)
    end
  end
end
