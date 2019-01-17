# frozen_string_literal: true

module OnePoundSteak
  class Cash < Common

    def stripe_card_id(param)
      Common.not_nil_check(__method__.to_s, param)
    end

    def coupon_code(param)
      Common.not_nil_check(__method__.to_s, param)
    end

    def coupon_code_or_stripe_card_id(coupon_code, stripe_card_id)
      is_valid_coupon, _  = Common.not_nil_check(__method__.to_s, coupon_code)
      is_valid_card_id, _ = Common.not_nil_check(__method__.to_s, stripe_card_id)

      return false, 'empty params coupon_code or stripe_card_token' if is_valid_coupon && is_valid_card_id
      return false, 'delete params coupon_code or stripe_card_token' unless is_valid_coupon || is_valid_card_id
      
      [!(is_valid_coupon && is_valid_card_id) && (is_valid_coupon || is_valid_card_id), 'ok ' + __method__.to_s]
    end

    def stripe_card_token_or_coupon_code?
      is_token_nil = @stripe_card_token.nil?
      is_coupon_nil = @coupon_code.nil?
      @message.push('empty params coupon_code or stripe_card_token') if is_coupon_nil && is_token_nil
      @message.push('delete params coupon_code or stripe_card_token') unless is_token_nil || is_coupon_nil
      !(is_coupon_nil && is_token_nil) && (is_token_nil || is_coupon_nil)
    end

    def order_num(param)
      Common.regex_check(__method__.to_s, param, Regex::VALID_NUTURAL_NUMBER)
    end

    def product_id(param)
      Common.regex_check(__method__.to_s, param, Regex::VALID_NUTURAL_NUMBER)
    end

    def acceptable_date(param)
      Common.regex_check(__method__.to_s, param, Regex::VALID_DATETIME)
    end

    def total_price(param)
      Common.regex_check(__method__.to_s, param, Regex::VALID_NUTURAL_NUMBER)
    end

    def stripe_varsion(param)
      Common.regex_check(__method__.to_s, param, Regex::VALID_DATE)
    end

    def cash_id(param)
      Common.regex_check(__method__.to_s, param, Regex::VALID_NUTURAL_NUMBER)
    end

    def page(param)
      Common.regex_check(__method__.to_s, param, Regex::VALID_NUTURAL_NUMBER)
    end

  end
end
