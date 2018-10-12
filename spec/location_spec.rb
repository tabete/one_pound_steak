require 'spec_helper'

RSpec.describe 'OnePoundSteak' do
  describe "#numeric" do

    before do
      @validate = OnePoundSteak::Location.new
    end

    context "longitude" do
      it "ok" do
        p  @validate.longitude(135.0000)
        valid, _ = @validate.longitude(135.0000)
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.longitude(nil)
        expect(valid).to eq(false)
        expect(message).to eq('longitudeが取得できませんでした')
      end
    end

    context "latitude" do
      it "ok" do
        valid, _ = @validate.latitude(65.0000)
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.latitude(nil)
        expect(valid).to eq(false)
        expect(message).to eq('latitudeが取得できませんでした')
      end
    end

    context "scale" do
      it "ok" do
        valid, _ = @validate.scale(200)
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.scale(nil)
        expect(valid).to eq(false)
        expect(message).to eq('scaleが取得できませんでした')
      end
    end
  end
end
