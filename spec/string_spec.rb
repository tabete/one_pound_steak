require 'spec_helper'

RSpec.describe 'OnePondoSteak' do
  describe "#string" do

    before do
      @validate = OnePondoSteak::StringParam.new
    end

    context "文字数がmin以上max以下であるかチェック" do
      it "ok" do
        valid, message = @validate.between_size('あ', 1, 3)
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.between_size(nil, nil, nil)
        expect(valid).to eq(false)
        expect(message).to eq('between_sizeで入力が存在しませんでした')
      end

      it "no date type" do
        valid, message = @validate.between_size('a', 'b', 'v')
        expect(valid).to eq(false)
        expect(message).to eq('between_sizeで無効な型が入力されました')
      end

      it "no minよりmaxが大きく無い" do
        valid, message = @validate.between_size('あ', 2, 1)
        expect(valid).to eq(false)
        expect(message).to eq('between_sizeはminの値はmaxよりも大きい値を入力してください')
      end

      it "no numがmin以上では無い" do
        valid, message = @validate.between_size('あ', 2, 3)
        expect(valid).to eq(false)
        expect(message).to eq('between_sizeは2以上の値を入力してください')
      end

      it "maxよりnumが小さく無い" do
        valid, message = @validate.between_size('あああ', 1, 2)
        expect(valid).to eq(false)
        expect(message).to eq('between_sizeは2以下の値を入力してください')
      end
    end

    context "入力文字数がオーバーしてないかチェック" do
      it "ok" do
        valid, message = @validate.size_over('あ', 2)
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.size_over(nil, nil)
        expect(valid).to eq(false)
        expect(message).to eq('size_overが取得できませんでした')
      end
    end

    context "絵文字かどうかのチェック" do
      it "ok" do
        valid, message = @validate.byte_over('1')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.byte_over(nil)
        expect(valid).to eq(false)
        expect(message).to eq('byte_overが取得できませんでした')
      end
    end

    context "英数混合かどうかのチェック" do
      it "ok" do
        valid, message = @validate.mixed_alphabets('aaaaaaa1')
        expect(valid).to eq(true)
      end

      it "no nil" do
        valid, message = @validate.mixed_alphabets(nil)
        expect(valid).to eq(false)
        expect(message).to eq('mixed_alphabetsが取得できませんでした')
      end

      it "文字だけ" do
        valid, message = @validate.mixed_alphabets('aa')
        expect(valid).to eq(false)
        expect(message).to eq('mixed_alphabetsの形式が不正です')
      end

      it "文字数が8文字に達していない" do
        valid, message = @validate.mixed_alphabets('aaaaaa1')
        expect(valid).to eq(false)
        expect(message).to eq('mixed_alphabetsの形式が不正です')
      end
    end
  end
end
