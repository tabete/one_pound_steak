# frozen_string_literal: true

module OnePoundSteak
  class Cash < Common
    def stripe_card_id(param)
      Common.not_nil_check('stripe_card_id', param)
    end

    def coupon_code(param)
      Common.not_nil_check('coupon_code', param)
    end

    def coupon_code_or_stripe_card_id(coupon_code, stripe_card_id)
      is_valid_coupon, = Common.not_blank_check('coupon_code', coupon_code)
      is_valid_card_id, = Common.not_blank_check('stripe_card_id', stripe_card_id)

      return false, 'empty params coupon_code or stripe_card_token' unless is_valid_coupon || is_valid_card_id

      [true, 'ok ' + 'coupon_code_or_stripe_card_id']
    end

    def order_num(param)
      Common.regex_check('order_num', param, Regex::VALID_NUTURAL_NUMBER)
    end

    def product_id(param)
      Common.regex_check('product_id', param, Regex::VALID_NUTURAL_NUMBER)
    end

    def acceptable_date(param)
      Common.regex_check('acceptable_date', param, Regex::VALID_DATETIME)
    end

    def total_price(param)
      Common.regex_check('total_price', param, Regex::VALID_NUTURAL_NUMBER)
    end

    def price(param)
      Common.regex_check('price', param, Regex::VALID_NUTURAL_NUMBER)
    end

    def stripe_varsion(param)
      Common.regex_check('stripe_varsion', param, Regex::VALID_DATE)
    end

    def cash_id(param)
      Common.regex_check('cash_id', param, Regex::VALID_NUTURAL_NUMBER)
    end

    def shop_id(param)
      Common.regex_check('shop_id', param, Regex::VALID_NUTURAL_NUMBER)
    end

    def page(param)
      Common.regex_check('page', param, Regex::VALID_NUTURAL_NUMBER)
    end
  end
end
