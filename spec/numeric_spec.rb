require 'spec_helper'

RSpec.describe 'OnePoundSteak' do
  describe '#numeric' do

    before do
      @validate = OnePoundSteak::NumericParam.new
    end

    context 'integer type' do
      it 'ok' do
        valid, _ = @validate.integer(1)
        expect(valid).to eq(true)
      end

      it 'no nil' do
        valid, _ = @validate.integer(-1)
        expect(valid).to eq(true)
      end

      it 'no date type' do
        valid, message = @validate.integer(nil)
        expect(valid).to eq(false)
        expect(message).to eq('integerが取得できませんでした')
      end

      it 'no type' do
        valid, message = @validate.integer(1.1)
        expect(valid).to eq(false)
        expect(message).to eq('integerの形式が不正です')
      end

      it 'no time type' do
        valid, message = @validate.integer('あ')
        expect(valid).to eq(false)
        expect(message).to eq('integerの形式が不正です')
      end
    end


    context 'nutural number type' do
      it 'ok' do
        valid, _ = @validate.natural_number(1)
        expect(valid).to eq(true)
      end

      it 'no nil' do
        valid, message = @validate.natural_number(-1)
        expect(valid).to eq(false)
        expect(message).to eq('integerの形式が不正です')
      end

      it 'no date type' do
        valid, message = @validate.natural_number(nil)
        expect(valid).to eq(false)
        expect(message).to eq('integerが取得できませんでした')
      end

      it 'no type' do
        valid, message = @validate.natural_number(1.1)
        expect(valid).to eq(false)
        expect(message).to eq('integerの形式が不正です')
      end

      it 'no time type' do
        valid, message = @validate.natural_number('あ')
        expect(valid).to eq(false)
        expect(message).to eq('integerの形式が不正です')
      end
    end


    context 'nutural number type' do
      it 'ok' do
        valid, _ = @validate.natural_number(1)
        expect(valid).to eq(true)
      end

      it 'no nil' do
        valid, message = @validate.natural_number(-1)
        expect(valid).to eq(false)
        expect(message).to eq('integerの形式が不正です')
      end

      it 'no date type' do
        valid, message = @validate.natural_number(nil)
        expect(valid).to eq(false)
        expect(message).to eq('integerが取得できませんでした')
      end

      it 'no type' do
        valid, message = @validate.natural_number(1.1)
        expect(valid).to eq(false)
        expect(message).to eq('integerの形式が不正です')
      end

      it 'no time type' do
        valid, message = @validate.natural_number('あ')
        expect(valid).to eq(false)
        expect(message).to eq('integerの形式が不正です')
      end
    end


    context 'size' do
      it 'ok' do
        valid, _ = @validate.between_number(1, 0, 2)
        expect(valid).to eq(true)
      end

      it 'no nil' do
        valid, message = @validate.between_number(nil, nil, nil)
        expect(valid).to eq(false)
        expect(message).to eq('number_sizeが取得できませんでした')
      end

      it 'no date type' do
        valid, message = @validate.between_number('a', 'b', 'v')
        expect(valid).to eq(false)
        expect(message).to eq('number_sizeに無効な型が入力されました')
      end

      it 'no offsetよりnumが大きく無い' do
        valid, message = @validate.between_number(0, 1, 2)
        expect(valid).to eq(false)
        expect(message).to eq('number_sizeは1以上の値を入力してください')
      end

      it 'no numがoffset以上では無い' do
        valid, message = @validate.between_number(0, 1, 2)
        expect(valid).to eq(false)
        expect(message).to eq('number_sizeは1以上の値を入力してください')
      end

      it 'limitよりnumが小さく無い' do
        valid, message = @validate.between_number(2, 1, 2)
        expect(valid).to eq(false)
        expect(message).to eq('number_sizeは2以下の値を入力してください')
      end

    end
  end
end
