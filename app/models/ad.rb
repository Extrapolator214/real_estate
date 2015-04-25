# == Schema Information
#
# Table name: ads
#
#  id           :integer          not null, primary key
#  country      :string(255)      not null
#  region       :string(255)
#  city         :string(255)      not null
#  address      :string(255)      not null
#  type         :integer          not null
#  user_id      :integer          not null
#  longitude    :float(24)
#  latitude     :float(24)
#  description  :text(65535)      not null
#  price        :integer
#  price_period :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Ad < ActiveRecord::Base
  belongs_to :user

end
