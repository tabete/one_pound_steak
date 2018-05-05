require 'one_pondo_steak/version'

#require 'one_pondo_steak/product'
module OnePondoSteak
  class Hoge
    def self.home
      p 'asd'
    end
  end
  require './one_pondo_steak/common'
  require 'one_pondo_steak/datetime_param'
  require 'one_pondo_steak/string_param'
  require 'one_pondo_steak/numeric_param'
  require 'one_pondo_steak/regex'
  require 'one_pondo_steak/user'
end
