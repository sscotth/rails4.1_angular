class Fillup < ActiveRecord::Base

  validates :odometer, presence: true, uniqueness: true, numericality: { greater_than: 0 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :volume, presence: true, numericality: { greater_than: 0 }

end
