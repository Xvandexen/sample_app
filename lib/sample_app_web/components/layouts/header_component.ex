defmodule SampleAppWeb.Layouts.HeaderComponent do
  use Phoenix.Component
  use SampleAppWeb, :verified_routes

  def site_header(assigns) do
    ~H"""
    <header>
      <nav class="fixed top-0 left-0 right-0 bg-gray-800 p-4">
        <div class="container mx-auto flex justify-between items-center">
          <.link href={~p"/"} id="logo" class="text-white text-xl font-bold"> SAMPLE APP</.link>

          <button class="lg:hidden text-white" id="nav-toggle" aria-label="Toggle navigation">
            <span class="block h-0.5 w-6 bg-white mb-1"></span>
            <span class="block h-0.5 w-6 bg-white mb-1"></span>
            <span class="block h-0.5 w-6 bg-white"></span>
          </button>

          <div class="hidden lg:flex items-center space-x-4" id="nav-content">
            <ul class="flex space-x-4">
              <li>
                <.link href={~p"/"} class="text-gray-300 hover:text-white">Home</.link>
              </li>
              <li>
                <.link href={~p"/help"} class="text-gray-300 hover:text-white">Help</.link>
              </li>
              <li>
                <.link href={~p"/login"} id="login" class="text-gray-300 hover:text-white">
                  Login
                </.link>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
    """
  end
end
