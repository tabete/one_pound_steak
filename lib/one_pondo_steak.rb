require 'one_pondo_steak/version'
require 'one_pondo_steak/common'
require 'one_pondo_steak/datetime_param'
require 'one_pondo_steak/string_param'
require 'one_pondo_steak/numeric_param'
require 'one_pondo_steak/regex'
require 'one_pondo_steak/user'
#require 'one_pondo_steak/product'
class OnePondoSteak
  class Hoge
    def self.home
      p 'asd'
    end
  end
  include 'one_pondo_steak/common'
  include 'one_pondo_steak/datetime_param'
  include 'one_pondo_steak/string_param'
  include 'one_pondo_steak/numeric_param'
  include 'one_pondo_steak/regex'
  include 'one_pondo_steak/user'

end
