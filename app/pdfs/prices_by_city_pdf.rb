class PricesByCityPdf < Prawn::Document
  def initialize(ads, view)
    super(top_margin: 50)
    @ads = ads
    @view = view
    title
    line_items
  end

  def title
    text "Prices by city", size: 30, style: :bold
  end

  def line_items
    move_down 20
    table line_item_rows do
      row(0).font_style = :bold
      columns(1..2).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def line_item_rows
    [["City", "Average Price", "Term"]] + @ads.to_a
  end
end