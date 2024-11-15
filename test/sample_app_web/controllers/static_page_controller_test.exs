defmodule SampleAppWeb.StaticPageControllerTest do
  use SampleAppWeb.ConnCase

  @base_title "Phoenix Tutorial Sample App"
  # Note the pattern matching to get conn

  test "root route", %{conn: conn} do
    # Using the verified routes syntax
    conn = get(conn, ~p"/")
    assert html_response(conn, 200)
  end

  test "should get home", %{conn: conn} do
    conn = get(conn, ~p"/static_pages/home")

    html_response(conn, 200)
    |> assert_select("title", "Home | #{@base_title}")
  end

  test "should get help", %{conn: conn} do
    conn = get(conn, ~p"/static_pages/help")

    html_response(conn, 200)
    |> assert_select("title", "Help | #{@base_title}")
  end

  test "should get about", %{conn: conn} do
    conn = get(conn, ~p"/static_pages/about")

    html_response(conn, 200)
    |> assert_select("title", "About | #{@base_title}")
  end

  test "should get contact", %{conn: conn} do
    conn = get(conn, ~p"/static_pages/about")

    html_response(conn, 200)
    |> assert_select("title, Contact | #{@base_title}")
  end
end
