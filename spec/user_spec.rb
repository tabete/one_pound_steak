require 'spec_helper'

RSpec.describe 'OnePoundSteak' do
  describe "#numeric" do

    before do
      @validate = OnePoundSteak::User.new
    end

    context "email" do
      it "ok" do
        valid, _ = @validate.email('aaa@ddd.ccc')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.email(nil)
        expect(valid).to eq(false)
        expect(message).to eq('emailが取得できませんでした')
      end
    end

    context "password" do
      it "ok" do
        valid, _ = @validate.password('aaaaaaa1')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.password(nil)
        expect(valid).to eq(false)
        expect(message).to eq('passwordが取得できませんでした')
      end
    end

    context "name" do
      it "ok" do
        valid, _ = @validate.name('カプチーノ')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.name(nil)
        expect(valid).to eq(false)
        expect(message).to eq('nameが取得できませんでした')
      end
    end

    context "family_name" do
      it "ok" do
        valid, _ = @validate.family_name('カプチーノ')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.family_name(nil)
        expect(valid).to eq(false)
        expect(message).to eq('family_nameが取得できませんでした')
      end
    end

    context "given_name" do
      it "ok" do
        valid, _ = @validate.given_name('コークッキング')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.given_name(nil)
        expect(valid).to eq(false)
        expect(message).to eq('given_nameが取得できませんでした')
      end
    end

    context "first_ruby" do
      it "ok" do
        valid, _ = @validate.first_ruby('カプチーノ')
        expect(valid).to eq(true)
      end

      it "not katakana" do
        valid, message = @validate.first_ruby('かぷちーの')
        expect(valid).to eq(false)
        expect(message).to eq('first_rubyの形式が不正です')
      end

      it "no nil" do
        valid, message = @validate.first_ruby(nil)
        expect(valid).to eq(false)
        expect(message).to eq('first_rubyが取得できませんでした')
      end
    end

    context "last_ruby" do
      it "not katakana" do
        valid, message = @validate.last_ruby('かぷちーの')
        expect(valid).to eq(false)
        expect(message).to eq('last_rubyの形式が不正です')
      end

      it "ok" do
        valid, _ = @validate.last_ruby('カプチーノ')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.last_ruby(nil)
        expect(valid).to eq(false)
        expect(message).to eq('last_rubyが取得できませんでした')
      end
    end

    context "station1" do
      it "ok" do
        valid, _ = @validate.station1('駅1')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.station1(nil)
        expect(valid).to eq(false)
        expect(message).to eq('station1が取得できませんでした')
      end
    end

    context "station2" do
      it "ok" do
        valid, _ = @validate.station2('駅2')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.station2(nil)
        expect(valid).to eq(false)
        expect(message).to eq('station2が取得できませんでした')
      end
    end

    context "gender" do
      it "ok" do
        valid, _ = @validate.gender(0)
        expect(valid).to eq(true)
      end
      it "ok" do
        valid, _ = @validate.gender(3)
        expect(valid).to eq(true)
      end
      it "no nil" do
        valid, message = @validate.gender(nil)
        expect(valid).to eq(false)
        expect(message).to eq('genderが取得できませんでした')
      end
    end

    context "birth" do
      it "ok" do
        valid, _ = @validate.birth('2000-11-12')
        expect(valid).to eq(true)
      end
      it "ok" do
        valid, _ = @validate.birth('2000-01-01')
        expect(valid).to eq(true)
      end
      it "ok nil" do
        valid, message = @validate.birth(nil)
        expect(valid).to eq(true)
        expect(message).to eq('ok birth')
      end
      it "ok nil" do
        valid, message = @validate.birth('カプチーノ')
        expect(valid).to eq(false)
        expect(message).to eq('birthの形式が不正です')
      end
    end

    context "phone_number" do
      it "ok" do
        valid, _ = @validate.phone_number('090-0000-0000')
        expect(valid).to eq(true)
      end
      it "ok (nil)" do
        valid, message = @validate.phone_number(nil)
        expect(valid).to eq(true)
      end
      it "no invalid" do
        valid, message = @validate.phone_number('1234567890')
        expect(valid).to eq(false)
        expect(message).to eq('phone_numberの形式が不正です')
      end
      it "no invalid(blank)" do
        valid, message = @validate.phone_number('')
        expect(valid).to eq(false)
        expect(message).to eq('phone_numberの形式が不正です')
      end
      it "no invalid(space)" do
        valid, message = @validate.phone_number(' ')
        expect(valid).to eq(false)
        expect(message).to eq('phone_numberの形式が不正です')
      end
    end

    context "profile_image" do
      it "ok" do
        valid, _ = @validate.profile_image('www.ssss.vvvvv')
        expect(valid).to eq(true)
      end
      it "no nil" do
        valid, message = @validate.profile_image(nil)
        expect(valid).to eq(false)
        expect(message).to eq('profile_imageが取得できませんでした')
      end
    end

    context "provider" do
      it "ok" do
        valid, _ = @validate.provider('0')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.provider(nil)
        expect(valid).to eq(false)
        expect(message).to eq('providerが取得できませんでした')
      end
    end

    context "os" do
      it "ok" do
        valid, _ = @validate.os('android')
        expect(valid).to eq(true)
      end

      it "ok" do
        valid, _ = @validate.os('ios')
        expect(valid).to eq(true)
      end

      it "ok" do
        valid, _ = @validate.os('web')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.os(nil)
        expect(valid).to eq(false)
        expect(message).to eq('osが取得できませんでした')
      end
    end

    context "verify_email" do
      it "ok" do
        valid, _ = @validate.verify_email(1)
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.verify_email(nil)
        expect(valid).to eq(false)
        expect(message).to eq('verify_emailが取得できませんでした')
      end
    end
  end
end
