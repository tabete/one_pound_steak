# frozen_string_literal: true

# module Validation
#   module User
#     def self.valid_phone_number?(phone_number)
#       valid_pattern = /\A(((0(\d{1}[-(]?\d{4}|\d{2}[-(]?\d{3}|\d{3}[-(]?\d{2}|\d{4}[-(]?\d{1}|[5789]0[-(]?\d{4})[-)]?)|\d{1,4}\-?)\d{4}|0120[-(]?\d{3}[-)]?\d{3})\z/
#       if phone_number.empty?
#         return [false '電話番号を入力してください']
#       end
#
#       if phone_number !~ valid_pattern
#         [false '電話番号が正しくありません']
#       end
#
#       [tr]
#     end
#
#     def self.valid_name?(family_name, given_name)
#       if family_name.empty? || given_name.empty?
#         $flash[:alert_name] = 'お名前を入力してください'
#       end
#     end
#
#     def self.valid_birthday?(year, month, day)
#       year = year.to_i
#       month = month.to_i
#       day = day.to_i
#       unless Date.valid_date?(year, month, day)
#         $flash[:alert_birth] = '不正な生年月日です'
#       end
#     end
#
#     def self.valid_gender?(gender)
#       if gender.empty?
#         $flash[:alert_gender] = '性別を入力してください'
#       end
#     end
#
#     def self.valid_password?(password, password_check)
#       if password.empty?
#         $flash[:alert_password] = 'パスワードを入力してください'
#         return $flash[:alert_password]
#       end
#
#       valid_password_pattern = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,100}+\z/i
#       if password !~ valid_password_pattern
#         $flash[:alert_invalid_password] = "パスワードは英数字混合にしてください"
#         return $flash[:alert_invalid_password]
#       end
#
#       if password_check.empty?
#         $flash[:alert_password_check] = 'パスワード(確認)を入力してください'
#         return $flash[:alert_password_check]
#       end
#
#       unless password == password_check
#         $flash[:alert_match_password] = "パスワードとパスワード(確認)が一致しません"
#       end
#     end
#   end
# end
