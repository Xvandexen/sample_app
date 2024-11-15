defmodule SampleAppWeb.StaticPageControllerTest do
  use SampleAppWeb.ConnCase

  # Note the pattern matching to get conn
  test "should get home", %{conn: conn} do
    conn = get(conn, ~p"/static_pages/home")
    assert html_response(conn, 200)
  end

  test "should get help", %{conn: conn} do
    conn = get(conn, ~p"/static_pages/help")
    assert html_response(conn, 200)
  end

  test "should get about", %{conn: conn} do
    conn = get(conn, ~p"/static_pages/about")
    assert html_response(conn, 200)
  end
end
