
  class StringParam < Common
    # 入力文字数がオーバーしてないかチェック
    def size_over(param, max_size, name = 'size_over')
      Common.size_check(name, param, max_size)
    end

    # 文字数がmin以上max以下であるかチェック
    def between_size(param, min, max, name = 'between_size')
      # この値がoffset以上limit未満
      return Common.state(false, name+'で入力が存在しませんでした') if param.nil? || min.nil? || max.nil?
      return Common.state(false, name+'で無効な型が入力されました') unless param.kind_of?(String) && min.kind_of?(Integer) && max.kind_of?(Integer)
      return Common.state(false, name+'は' + 'minの値はmaxよりも大きい値を入力してください') unless min < max
      return Common.state(false, name+'は' + min.to_s + '以上の値を入力してください') unless min <= param.size
      return Common.state(false, name+'は' + max.to_s + '以下の値を入力してください') unless param.size < max
      Common.state(true , 'ok '+ name)
    end

    # 絵文字かどうかのチェック
    def byte_over(param, name = 'byte_over')
      Common.regex_check(name, param, Regex::VALID_BYTE_OVER)
    end

    # 英数混合かどうかのチェック
    def mixed_alphabets(param, name = 'mixed_alphabets')
      Common.regex_check(name, param, Regex::VALID_MIXED_ALPHABETS)
    end
  end
