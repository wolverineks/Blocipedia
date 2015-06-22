class Amount < ActiveRecord::Base
  
  def initialize

  end

  def self.default
    15_00
  end

end
