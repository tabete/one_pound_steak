# require 'spec_helper'
#
# RSpec.describe 'Validation' do
#  describe "#product" do
#
#    context "shop_id" do
#      before do
#        @validate = Numeric.new
#        @name = 'shop_id'
#      end
#      it "ok" do
#        valid, message = @validate.datetime(1)
#        expect(valid).to eq(true)
#      end
#
#      it "no nil" do
#        valid, message = @validate.datetime(nil)
#        expect(valid).to eq(false)
#        expect(message).to eq(@name+'が取得できませんでした')
#      end
#    end
#
#    context "name" do
#      before do
#        #  @validate = Numeric.new
#        @name = 'shop_id'
#      end
#      it "ok" do
#        valid, message = @validate.datetime(1)
#        expect(valid).to eq(true)
#      end
#
#      it "no nil" do
#        valid, message = @validate.datetime(nil)
#        expect(valid).to eq(false)
#        expect(message).to eq(@name+'が取得できませんでした')
#      end
#    end
#
#    context "stock" do
#      before do
#        @validate = Numeric.new
#        @name = 'shop_id'
#      end
#      it "ok" do
#        valid, message = @validate.datetime(1)
#        expect(valid).to eq(true)
#      end
#
#      it "no nil" do
#        valid, message = @validate.datetime(nil)
#        expect(valid).to eq(false)
#        expect(message).to eq(@name+'が取得できませんでした')
#      end
#
#    end
#
#    context "description" do
#      before do
#        #  @validate = Numeric.new
#        @name = 'shop_id'
#      end
#      it "ok" do
#        valid, message = @validate.datetime(1)
#        expect(valid).to eq(true)
#      end
#
#      it "no nil" do
#        valid, message = @validate.datetime(nil)
#        expect(valid).to eq(false)
#        expect(message).to eq(@name+'が取得できませんでした')
#      end
#    end
#    context "available_time_start" do
#      before do
#        @validate = Datetime.new
#      end
#      it "ok" do
#        valid, message = @validate.datetime('2000-01-01 00:00:00')
#        expect(valid).to eq(true)
#      end
#
#      it "no nil" do
#        valid, message = @validate.datetime(nil)
#        expect(valid).to eq(false)
#        expect(message).to eq('が取得できませんでした')
#      end
#    end
#
#    context "available_time_end" do
#      before do
#        @validate = Datetime.new
#      end
#      it "ok" do
#        valid, message = @validate.datetime('2000-01-01 00:00:00')
#        expect(valid).to eq(true)
#      end
#
#      it "no nil" do
#        valid, message = @validate.datetime(nil)
#        expect(valid).to eq(false)
#        expect(message).to eq('が取得できませんでした')
#      end
#    end
#
#    context "price" do
#      before do
#        @validate = Numeric.new
#        @name = 'shop_id'
#      end
#      it "ok" do
#        valid, message = @validate.datetime(1)
#        expect(valid).to eq(true)
#      end
#
#      it "no nil" do
#        valid, message = @validate.datetime(nil)
#        expect(valid).to eq(false)
#        expect(message).to eq(@name+'が取得できませんでした')
#      end
#    end
#
#    context "discount_price" do
#      before do
#        @validate = Numeric.new
#        @name = 'shop_id'
#      end
#      it "ok" do
#        valid, message = @validate.datetime(1)
#        expect(valid).to eq(true)
#      end
#
#      it "no nil" do
#        valid, message = @validate.datetime(nil)
#        expect(valid).to eq(false)
#        expect(message).to eq(@name+'が取得できませんでした')
#      end
#    end
#
#    context "is_enabled" do
#      before do
#        @validate = Numeric.new
#        @name = 'shop_id'
#      end
#      it "ok" do
#        valid, message = @validate.datetime(1)
#        expect(valid).to eq(true)
#      end
#
#      it "no nil" do
#        valid, message = @validate.datetime(nil)
#        expect(valid).to eq(false)
#        expect(message).to eq(@name+'が取得できませんでした')
#      end
#    end
#
#    context "rescue_message" do
#
#    end
#
#    context "top_img_url" do
#
#    end
#
#    context "exhibit_count" do
#      before do
#        @validate = Numeric.new
#        @name = 'shop_id'
#      end
#      it "ok" do
#        valid, message = @validate.datetime(1)
#        expect(valid).to eq(true)
#      end
#
#      it "no nil" do
#        valid, message = @validate.datetime(nil)
#        expect(valid).to eq(false)
#        expect(message).to eq(@name+'が取得できませんでした')
#      end
#    end
#    end
#  end
