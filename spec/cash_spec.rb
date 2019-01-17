require 'spec_helper'

RSpec.describe 'OnePoundSteak' do
  describe "#numeric" do

    before do
      @validate = OnePoundSteak::Cash.new
    end

    context "stripe_card_id" do
      it "ok" do
        valid, _ = @validate.stripe_card_id('aaaaa')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.stripe_card_id(nil)
        expect(valid).to eq(false)
        expect(message).to eq('stripe_card_idが取得できませんでした')
      end
    end

    context "coupon_code" do
      it "ok" do
        valid, _ = @validate.coupon_code('aaaaa')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.stripe_card_id(nil)
        expect(valid).to eq(false)
        expect(message).to eq('stripe_card_idが取得できませんでした')
      end
    end


    context "coupon_code_or_stripe_card_id" do
      it "ok stripe_card_id nil" do
        valid, message = @validate.coupon_code_or_stripe_card_id(nil, 'coupon_code22')
        expect(valid).to eq(true)
      end

      it "ok coupon_code nil" do
        valid, message = @validate.coupon_code_or_stripe_card_id('stripe_card_id11', nil)
        expect(valid).to eq(true)
      end

      it "ok param both not nil" do
        valid, message = @validate.coupon_code_or_stripe_card_id('stripe_card_id11', 'coupon_code22')
        expect(valid).to eq(true)
      end

      it "param both nil" do
        valid, message = @validate.coupon_code_or_stripe_card_id(nil, nil)
        expect(valid).to eq(false)
        expect(message).to eq('empty params coupon_code or stripe_card_token')
      end

    end

    context "product_id" do
      it "ok" do
        valid, _ = @validate.product_id('11')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.product_id(nil)
        expect(valid).to eq(false)
        expect(message).to eq('product_idが取得できませんでした')
      end
    end

    context "acceptable_date" do
      it "ok" do
        valid, _ = @validate.acceptable_date('1999-01-01 01:00:00')
        expect(valid).to eq(true)
      end

      it "not datetime" do
        valid, message = @validate.acceptable_date('かぷちーの')
        expect(valid).to eq(false)
        expect(message).to eq('acceptable_dateの形式が不正です')
      end

      it "no nil" do
        valid, message = @validate.acceptable_date(nil)
        expect(valid).to eq(false)
        expect(message).to eq('acceptable_dateが取得できませんでした')
      end
    end

    context "total_price" do
      it "ok" do
        valid, _ = @validate.total_price('11')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.total_price(nil)
        expect(valid).to eq(false)
        expect(message).to eq('total_priceが取得できませんでした')
      end
    end

    context "stripe_varsion" do
      it "ok" do
        valid, _ = @validate.stripe_varsion('1999-01-01')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.stripe_varsion(nil)
        expect(valid).to eq(false)
        expect(message).to eq('stripe_varsionが取得できませんでした')
      end

      it "not date" do
        valid, message = @validate.stripe_varsion('かぷちーの')
        expect(valid).to eq(false)
        expect(message).to eq('stripe_varsionの形式が不正です')
      end
    end

    context "cash_id" do
      it "ok" do
        valid, _ = @validate.cash_id(111)
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.cash_id(nil)
        expect(valid).to eq(false)
        expect(message).to eq('cash_idが取得できませんでした')
      end

      it "not date" do
        valid, message = @validate.cash_id('かぷちーの')
        expect(valid).to eq(false)
        expect(message).to eq('cash_idの形式が不正です')
      end
    end
    context "page" do
      it "ok" do
        valid, _ = @validate.page(111)
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.page(nil)
        expect(valid).to eq(false)
        expect(message).to eq('pageが取得できませんでした')
      end

      it "not date" do
        valid, message = @validate.page('かぷちーの')
        expect(valid).to eq(false)
        expect(message).to eq('pageの形式が不正です')
      end
    end
  end
end
