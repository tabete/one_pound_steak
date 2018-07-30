# frozen_string_literal: true

module OnePoundSteak
  class Cash < Common

    def stripe_card_id(param)
      Common.nil_check('stripe_card_id', param)
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

    def stripe_varsion(param)
      Common.regex_check('stripe_varsion', param, Regex::VALID_DATE)
    end

    def cash_id(param)
      Common.regex_check('cash_id', param, Regex::VALID_NUTURAL_NUMBER)
    end

    def page(param)
      Common.regex_check('page', param, Regex::VALID_NUTURAL_NUMBER)
    end

  end
end
