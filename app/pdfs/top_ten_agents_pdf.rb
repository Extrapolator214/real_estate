class TopTenAgentsPdf < Prawn::Document
  def initialize(ads, view)
    super(top_margin: 50)
    @ads = ads
    @view = view
    title
    line_items
  end

  def title
    text "Top 10 agents", size: 30, style: :bold
  end

  def line_items
    move_down 20
    table line_item_rows do
      row(0).font_style = :bold
      columns(1).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def line_item_rows
    [["Full name", "email", "Phone", "Number of ads"]] + @ads.to_a
  end
end