# frozen_string_literal: true

require 'active_support/core_ext/object/blank' # present使用のため

module OnePoundSteak
  class User < Common
    MAX_NAME_SIZE = 50
    OS_PATTERN = %(android ios web)

    def email(param)
      Common.regex_check('email', param, Regex::VALID_EMAIL)
    end

    def password(param)
      StringParam.new.mixed_alphabets(param, 'password')
    end

    def name(param)
      StringParam.new.size_over(param, MAX_NAME_SIZE, 'name')
    end

    def family_name(param)
      StringParam.new.size_over(param, MAX_NAME_SIZE, 'family_name')
    end

    def given_name(param)
      StringParam.new.size_over(param, MAX_NAME_SIZE, 'given_name')
    end

    def first_ruby(param)
      is_valid, message = StringParam.new.katakana_alphabets(param, 'first_ruby')
      return [is_valid, message] unless is_valid
      is_valid, message = StringParam.new.size_over(param, MAX_NAME_SIZE, 'first_ruby')
      return [is_valid, message] unless is_valid
      [is_valid, message]
    end

    def last_ruby(param)
      is_valid, message = StringParam.new.katakana_alphabets(param, 'last_ruby')
      return [is_valid, message] unless is_valid
      is_valid, message = StringParam.new.size_over(param, MAX_NAME_SIZE, 'last_ruby')
      return [is_valid, message] unless is_valid
      [is_valid, message]
    end

    def station1(param)
      StringParam.new.size_over(param, MAX_NAME_SIZE, 'station1')
    end

    def station2(param)
      StringParam.new.size_over(param, MAX_NAME_SIZE, 'station2')
    end

    def gender(param)
      NumericParam.new.between_number(param, 0, 3, 'gender')
    end

    def birth(param)
      is_valid, message = Common.is_nil_check('birth', param)
      return [is_valid, message] if is_valid

      DatetimeParam.new.date(param, 'birth')
    end

    def phone_number(param)
      if param.present?
        Common.regex_check('phone_number', param, Regex::VALID_PHONENUMBER)
      else
        Common.state(true, 'ok phone_number')
      end
    end

    def profile_image(param)
      Common.not_nil_check('profile_image', param)
    end

    def provider(param)
      NumericParam.new.natural_number(param, 'provider')
    end

    def os(param)
      Common.enum_check('os', param, OS_PATTERN)
    end

    def verify_email(param)
      NumericParam.new.between_number(param, 0, 2, 'verify_email')
    end
  end
end
