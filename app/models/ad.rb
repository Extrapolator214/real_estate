# == Schema Information
#
# Table name: ads
#
#  id           :integer          not null, primary key
#  country      :string(255)      not null
#  region       :string(255)
#  city         :string(255)      not null
#  address      :string(255)
#  offer        :integer          not null
#  user_id      :integer          not null
#  longitude    :float(24)
#  latitude     :float(24)
#  description  :text(65535)      not null
#  price        :decimal(65, )
#  price_period :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  currency     :string(255)
#

class Ad < ActiveRecord::Base
  belongs_to :user

  enum offer: [:sell, :rent_out]
  enum price_period: [:day, :week, :month]

  geocoded_by :full_address, :lookup => :google

  before_validation :geocode, if: :full_address_changed?
  before_validation :remove_period_for_sell
  before_create :geocode

  def full_address
    [address, city, region, country].compact.join(', ')
  end

  def full_address_changed?
    address_changed? || country_changed? || region_changed? || city_changed?
  end

  def remove_period_for_sell
    self.price_period = nil if self.offer == 'sell' && price_period.present?
  end
end
