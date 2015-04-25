class AdDecorator < Draper::Decorator
  delegate_all

  def price
    ['%.2f' % object.price, ' ', currency, ('/' if price_period), price_period.presence].join
  end

end
