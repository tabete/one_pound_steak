# frozen_string_literal: true

require 'date'

class Common
  def self.regex_check(name, param, regex)
    return state(false, name + 'が取得できませんでした') if param.nil?
    return state(false, name + 'の形式が不正です') if (param.to_s =~ regex).nil?
    state(true, 'ok ' + name)
  end

  def self.size_check(name, param, max_size)
    return state(false, name + 'が取得できませんでした') if param.nil?
    return state(false, name + 'のサイズが大きすぎます') if max_size <= param.size
    state(true, 'ok ' + name)
  end

  def self.not_nil_check(name, param)
    return state(false, name + 'が取得できませんでした') if param.nil?
    state(true, 'ok ' + name)
  end

  def self.is_nil_check(name, param)
    return state(false, name + 'がnilではありませんでした') unless param.nil?
    state(true, 'ok ' + name)
  end

  def self.enum_check(name, param, patern)
    return state(false, name + 'が取得できませんでした') if param.nil?
    return state(false, name + 'は入力されたパターンに一致しませんでした') unless patern.include?(param)
    state(true, 'ok ' + name)
  end

  def self.state(is_valid, message)
    [is_valid, message]
  end
end
