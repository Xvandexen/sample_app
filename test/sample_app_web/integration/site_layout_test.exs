defmodule SampleAppWeb.SiteLayoutTest do
  use SampleAppWeb.ConnCase, async: true

  test "layout links", %{conn: conn} do
    conn = get(conn, ~p"/")

    html_response(conn, 200)
    |> assert_select("a[href='#{~p"/"}']", count: 2)
    |> assert_select("a[href='#{~p"/help"}']")
    |> assert_select("a[href='#{~p"/about"}']")
    |> assert_select("a[href='#{~p"/contact"}']")
    |> assert_select("a[href='#{~p"/signup"}']")
  end
end
