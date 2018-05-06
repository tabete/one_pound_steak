module OnePoundSteak
  class Product < Common
    def shop_id(param)
      @validate = NumericParam.new
      @validate.natural_number(param, 'shop_id')
    end

    def name(param)

    end

    def stock(param)
      @validate = NumericParam.new
      @validate.natural_number(param, 'stock')
    end

    def description(param)

    end

    def available_time_start(param)

    end

    def available_time_end(param)

    end

    def price(param)
      @validate = NumericParam.new
      @validate.natural_number(param, 'stock')

    end

    def discount_price(param)
      @validate = NumericParam.new
      @validate.natural_number(param, 'stock')

    end

    def is_enabled(param)

    end

    def rescue_message(param)

    end

    def top_img_url(param)

    end

    def exhibit_count(param)
      @validate = NumericParam.new
      @validate.natural_number(param, 'stock')
    end
  end
end
