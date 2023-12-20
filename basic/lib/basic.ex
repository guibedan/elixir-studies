defmodule Basic do
  def create_list do
    [1, 2, 3, 4, 6]
  end


  def api(url) do
    case Tesla.get url do
    {:ok, %Tesla.Env{status: 200, body: body}} ->
      {:ok, body}
    {:error, reason} ->
      {:error, reason}
    end
  end


  def print_data_viacep(cep) do
    case api("https://viacep.com.br/ws/" <> cep <> "/json/") do
      {:ok, body} ->
        IO.puts body
      {:error, reason} ->
        IO.puts "Error: #{reason}"
    end
  end
end
