defmodule SampleAppWeb.StaticPageControllerTest do
  use SampleAppWeb.ConnCase

  # Note the pattern matching to get conn
  test "should get home", %{conn: conn} do
    conn = get(conn, ~p"/static_pages/home")

    html_response(conn, 200)
    |> assert_select("title", "Home | Phoenix Tutorial Sample App")
  end

  test "should get help", %{conn: conn} do
    conn = get(conn, ~p"/static_pages/help")

    html_response(conn, 200)
    |> assert_select("title", "Help | Phoenix Tutorial Sample App")
  end

  test "should get about", %{conn: conn} do
    conn = get(conn, ~p"/static_pages/about")

    html_response(conn, 200)
    |> assert_select("title", "About | Phoenix Tutorial Sample App")
  end
end
