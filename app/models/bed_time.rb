class BedTime << ActiveHash::Base
  include ActiveHash::Associations
  has_many :checks

  
end
