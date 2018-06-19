# frozen_string_literal: true

require 'date'
module OnePoundSteak
  class DatetimeParam < Common
    # 日時チェック
    def datetime(param, name = 'datetime')
      Common.regex_check(
        name,
        param,
        Regex::VALID_DATETIME
      )
    end

    # 日付チェック
    def date(param, name = 'date')
      Common.regex_check(
        name,
        param,
        Regex::VALID_DATE
      )
    end

    # 時間チェック
    def time(param, name = 'time')
      Common.regex_check(
        name,
        param,
        Regex::VALID_TIME
      )
    end

    def relation_datetime(start_param, end_param, start_name = 'start_datetime', end_name = 'end_datetime')
      start_valid, start_message = Common.regex_check(
        start_name,
        start_param,
        Regex::VALID_DATETIME
      )

      end_valid, end_message = Common.regex_check(
        end_name,
        start_param,
        Regex::VALID_DATETIME
      )

      return [false, start_message + end_message] unless start_valid && end_valid
      return [false, '終了日時は開始日時よりも過去に設定してください'] if DateTime.parse(start_param) > DateTime.parse(end_param)
      [true, 'ok datetime']
    end

    def relation_date(start_param, end_param, start_name = 'start_date', end_name = 'end_date')
      start_valid, start_message = Common.regex_check(
        start_name,
        start_param,
        Regex::VALID_DATE
      )

      end_valid, end_message = Common.regex_check(
        end_name,
        end_param,
        Regex::VALID_DATE
      )

      return Common.state(false, start_message + end_message) unless start_valid && end_valid
      return Common.state(false, '終了日は開始日よりも過去に設定してください') if Date.parse(start_param) > Date.parse(end_param)
      Common.state(true, 'ok datetime')
    end

    def relation_time(start_param, end_param, start_name = 'start_time', end_name = 'end_time')
      start_valid, start_message = Common.regex_check(
        start_name,
        start_param,
        Regex::VALID_TIME
      )

      end_valid, end_message = Common.regex_check(
        end_name,
        end_param,
        Regex::VALID_TIME
      )

      return Common.state(false, start_message + end_message) unless start_valid && end_valid
      return Common.state(false, '終了時間は開始時間よりも過去に設定してください') if DateTime.parse(start_param) > DateTime.parse(end_param)
      Common.state(true, 'ok datetime')
    end
  end
end
