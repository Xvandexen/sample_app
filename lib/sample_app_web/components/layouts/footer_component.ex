defmodule SampleAppWeb.Layouts.FooterComponent do
  use Phoenix.Component
  use SampleAppWeb, :verified_routes

  def site_footer(assigns) do
    ~H"""
    <footer class="w-full bg-gray-100 py-4">
      <div class="container mx-auto px-4 flex justify-between items-center">
        <small class="text-gray-600">
          The <a href="#" class="text-blue-600 hover:text-blue-800">Phoenix Tutorial</a>
          by <a href="#" class="text-blue-600 hover:text-blue-800">Binh Tran</a>
        </small>
        <nav>
          <ul class="flex space-x-4">
            <li><.link href={~p"/about"} class="text-gray-300 hover:text-white">About</.link></li>
            <li><.link href={~p"/contact"} class="text-gray-300 hover:text-white">Contact</.link></li>
          </ul>
        </nav>
      </div>
    </footer>
    """
  end
end
