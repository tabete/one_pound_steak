require 'date'
class Regex
  ## Datetime
  # DATETIME型
  VALID_DATETIME = /\A([\d]{4})-([\d]{2})-([\d]{2}) ([\d]{2}):([\d]{2}):([\d]{2})\z/
  # DATE型
  VALID_DATE = /\A([\d]{4})-([\d]{2})-([\d]{2})\z/
  # TIME型
  VALID_TIME = /\A([\d]{2}):([\d]{2}):([\d]{2})\z/

  ## Integer
  VALID_INTEGER = /\A-?[0-9]+\z/
  VALID_NUTURAL_NUMBER = /\A[0-9]+\z/

  ## String
  # Email
  VALID_EMAIL = /\A[a-zA-Z0-9_\#!$%&`'*+\-{|}~^\/=?\.]+@[a-zA-Z0-9][a-zA-Z0-9\.-]+\z/
  # 電話番号
  VALID_PHONENUMBER = /\A(((0(\d{1}[-(]?\d{4}|\d{2}[-(]?\d{3}|\d{3}[-(]?\d{2}|\d{4}[-(]?\d{1}|[5789]0[-(]?\d{4})[-)]?)|\d{1,4}\-?)\d{4}|0120[-(]?\d{3}[-)]?\d{3})\z/
  # 住所
  VALID_ZIPCODE = /^\d{3}[-]\d{4}$/
  # 絵文字以外判定
  VALID_BYTE_OVER = /[^\p{In_Miscellaneous_Symbols_and_Pictographs}\p{In_Emoticons}]/
  # 英数混合のもので8文字以上
  VALID_MIXED_ALPHABETS = /\A(?=.*?[a-zA-Z])(?=.*?\d)[a-zA-Z\d]{8,100}+\z/
end
