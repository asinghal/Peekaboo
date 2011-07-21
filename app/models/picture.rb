class Picture < ActiveRecord::Base
  
  def self.pickRandom
#    SELECT id FROM pictures ORDER BY RANDOM() limit 3
    find(:all,  :order => 'RANDOM() DESC', :limit => 3)
  end
end
