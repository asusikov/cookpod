defmodule CookpodWeb.PageControllerTest do
  use CookpodWeb.ConnCase
  import CookpodWeb.Gettext

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ gettext("Welcome to %{name}!", name: "Phoenix")
  end
end
