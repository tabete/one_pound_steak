# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'OnePoundSteak' do
  describe '#datetime' do
    before do
      @validate = OnePoundSteak::DatetimeParam.new
    end

    context 'datetime type' do
      it 'ok' do
        valid, message = @validate.datetime('2000-01-01 00:00:00')
        expect(valid).to eq(true)
      end

      it 'no nil' do
        valid, message = @validate.datetime(nil)
        expect(valid).to eq(false)
        expect(message).to eq('datetimeが取得できませんでした')
      end

      it 'no type' do
        valid, message = @validate.datetime('1999-01-01 1111')
        expect(valid).to eq(false)
        expect(message).to eq('datetimeの形式が不正です')
      end

      it 'no date type' do
        valid, message = @validate.datetime('1999-01-01')
        expect(valid).to eq(false)
        expect(message).to eq('datetimeの形式が不正です')
      end

      it 'no time type' do
        valid, message = @validate.datetime('11:11:11')
        expect(valid).to eq(false)
        expect(message).to eq('datetimeの形式が不正です')
      end
    end

    context 'date type' do
      it 'no datetime type' do
        valid, message = @validate.date('2000-01-01 00:00:00')
        expect(valid).to eq(false)
        expect(message).to eq('dateの形式が不正です')
      end

      it 'no nil' do
        valid, message = @validate.date(nil)
        expect(valid).to eq(false)
        expect(message).to eq('dateが取得できませんでした')
      end

      it 'no type' do
        valid, message = @validate.date('1999-01-01 1111')
        expect(valid).to eq(false)
        expect(message).to eq('dateの形式が不正です')
      end

      it 'ok date type' do
        valid, message = @validate.date('1999-01-01')
        expect(valid).to eq(true)
      end

      it 'no time type' do
        valid, message = @validate.date('11:11:11')
        expect(valid).to eq(false)
        expect(message).to eq('dateの形式が不正です')
      end
    end

    context 'time type' do
      it 'no datetime type' do
        valid, message = @validate.time('2000-01-01 00:00:00')
        expect(valid).to eq(false)
        expect(message).to eq('timeの形式が不正です')
      end

      it 'no nil' do
        valid, message = @validate.time(nil)
        expect(valid).to eq(false)
        expect(message).to eq('timeが取得できませんでした')
      end

      it 'no type' do
        valid, message = @validate.time('1999-01-01 1111')
        expect(valid).to eq(false)
        expect(message).to eq('timeの形式が不正です')
      end

      it 'no date' do
        valid, message = @validate.time('1999-01-01')
        expect(valid).to eq(false)
      end

      it 'ok time type' do
        valid, message = @validate.time('11:11:11')
        expect(valid).to eq(true)
      end
    end

    context 'relation_datetime type' do
      it 'ok datetime type' do
        valid, message = @validate.relation_datetime('2000-01-01 00:00:00', '2000-01-01 06:00:00')
        expect(valid).to eq(true)
      end

      it 'no relation' do
        valid, message = @validate.relation_datetime('2000-01-01 06:00:00', '2000-01-01 00:00:00')
        expect(message).to eq('終了日時は開始日時よりも過去に設定してください')
        expect(valid).to eq(false)
      end

      it 'no nil' do
        valid, message = @validate.relation_datetime(nil, nil)
        expect(valid).to eq(false)
        expect(message).to eq('start_datetimeが取得できませんでしたend_datetimeが取得できませんでした')
      end

      it 'no type' do
        valid, message = @validate.relation_datetime('1999-01-01 1111', '1999-01-01 1111')
        expect(valid).to eq(false)
        expect(message).to eq('start_datetimeの形式が不正ですend_datetimeの形式が不正です')
      end

      it 'no date' do
        valid, message = @validate.relation_datetime('1999-01-01', '1999-01-01')
        expect(valid).to eq(false)
        expect(message).to eq('start_datetimeの形式が不正ですend_datetimeの形式が不正です')
      end

      it 'no time type' do
        valid, message = @validate.relation_datetime('11:11:11', '11:11:11')
        expect(valid).to eq(false)
        expect(message).to eq('start_datetimeの形式が不正ですend_datetimeの形式が不正です')
      end
    end

    context 'relation_date type' do
      it 'ok datetime type' do
        valid, message = @validate.relation_date('2000-01-01 00:00:00', '2000-01-01 06:00:00')
        expect(valid).to eq(false)
        expect(message).to eq('start_dateの形式が不正ですend_dateの形式が不正です')
      end

      it 'no relation' do
        valid, message = @validate.relation_date('2000-01-02', '2000-01-01')
        expect(message).to eq('終了日は開始日よりも過去に設定してください')
        expect(valid).to eq(false)
      end

      it 'no nil' do
        valid, message = @validate.relation_date(nil, nil)
        expect(valid).to eq(false)
        expect(message).to eq('start_dateが取得できませんでしたend_dateが取得できませんでした')
      end

      it 'no type' do
        valid, message = @validate.relation_date('1999-01-01 1111', '1999-01-01 1111')
        expect(valid).to eq(false)
        expect(message).to eq('start_dateの形式が不正ですend_dateの形式が不正です')
      end

      it 'no date' do
        valid, message = @validate.relation_date('1999-01-01', '1999-01-01')
        expect(valid).to eq(true)
      end

      it 'no time type' do
        valid, message = @validate.relation_date('11:11:11', '11:11:11')
        expect(valid).to eq(false)
        expect(message).to eq('start_dateの形式が不正ですend_dateの形式が不正です')
      end
    end

    context 'relation_time type' do
      it 'ok datetime type' do
        valid, message = @validate.relation_time('2000-01-01 00:00:00', '2000-01-01 06:00:00')
        expect(valid).to eq(false)
        expect(message).to eq('start_timeの形式が不正ですend_timeの形式が不正です')
      end

      it 'no relation' do
        valid, message = @validate.relation_time('11:11:12', '11:11:11')
        expect(message).to eq('終了時間は開始時間よりも過去に設定してください')
        expect(valid).to eq(false)
      end

      it 'no nil' do
        valid, message = @validate.relation_time(nil, nil)
        expect(valid).to eq(false)
        expect(message).to eq('start_timeが取得できませんでしたend_timeが取得できませんでした')
      end

      it 'no type' do
        valid, message = @validate.relation_time('1999-01-01 1111', '1999-01-01 1111')
        expect(valid).to eq(false)
        expect(message).to eq('start_timeの形式が不正ですend_timeの形式が不正です')
      end

      it 'no date' do
        valid, message = @validate.relation_time('1999-01-01', '1999-01-01')
        expect(valid).to eq(false)
        expect(message).to eq('start_timeの形式が不正ですend_timeの形式が不正です')
      end

      it 'no time type' do
        valid, message = @validate.relation_time('11:11:11', '11:11:12')
        expect(valid).to eq(true)
      end
    end
  end
end
