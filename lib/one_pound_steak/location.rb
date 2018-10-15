# frozen_string_literal: true

module OnePoundSteak
  class Location < Common
    def longitude(param)
      NumericParam.new.between_number(param, -180, 180, __method__.to_s)
    end

    def latitude(param)
      NumericParam.new.between_number(param, -90, 90, __method__.to_s)
    end

    def distance(param)
      NumericParam.new.natural_number(param, __method__.to_s)
    end
  end
end
