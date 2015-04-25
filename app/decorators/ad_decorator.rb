class AdDecorator < Draper::Decorator
  delegate_all

  def price
    [h.number_with_precision(object.price, :precision => 2, :delimiter => ','), ' ', currency, ('/' if price_period), price_period.presence].join
  end

end
