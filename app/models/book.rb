class Book < ActiveRecord::Base

  validates :name, presence: true
  validates :authors_name, presence: true

   scope(
    :search, lambda do |name|
      unless name.nil?
        where("lower(name) LIKE ?", "%#{name.downcase}%")
      end
    end
  )
end
