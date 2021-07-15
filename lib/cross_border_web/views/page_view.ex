defmodule CrossBorderWeb.PageView do
  use CrossBorderWeb, :view

  def render("scripts.index.html", _assigns) do
    ~E"""
      <script type="text/javascript"> $(".slider-init").slick(); </script>
    """
  end
end
