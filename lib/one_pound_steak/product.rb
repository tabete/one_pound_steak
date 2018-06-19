# frozen_string_literal: true

module OnePoundSteak
  class Product < Common
    def shop_id(param)
      @validate = NumericParam.new
      @validate.natural_number(param, 'shop_id')
    end

    def stock(param)
      @validate = NumericParam.new
      @validate.natural_number(param, 'stock')
    end

    def price(param)
      @validate = NumericParam.new
      @validate.natural_number(param, 'stock')
    end

    def discount_price(param)
      @validate = NumericParam.new
      @validate.natural_number(param, 'stock')
    end

    def exhibit_count(param)
      @validate = NumericParam.new
      @validate.natural_number(param, 'stock')
    end
  end
end
