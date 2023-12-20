
defmodule Test do
  def sum(a, b) do
    a + b
  end

  def main() do
    IO.puts("Exercio 01")
    IO.puts("Exercio 02")
    IO.puts("Exercio 03")
    IO.puts("Exercio 04")

    IO.puts("Digite um número:")
    val = IO.gets("> ") |> String.trim()
    val = String.to_integer(val)

    case val do
      1 -> exer01()
      2 -> exer02()
      3 -> exer03()
      4 -> exer04()
      _ -> IO.puts("Opção inválida")
    end

  end

  def exer01() do
    IO.puts("Digite um número:")
    input01 = IO.gets("> ") |> String.trim()

    IO.puts("Digite um número:")
    input02 = IO.gets("> ") |> String.trim()

    input01 = String.to_integer(input01)
    input02 = String.to_integer(input02)

    IO.puts("O resultado é: #{sum(input01, input02)}")
  end

  def exer02() do
    IO.puts("Digite um número:")
    val = IO.gets("> ") |> String.trim()


    if is_integer(val |> String.to_integer()) do
      val = val |> String.to_integer()

      for i <- Enum.to_list(0..10) do
        IO.puts("#{val} x #{i} = #{val * i}")
      end
    end

  end

  def exer03() do

    # concat
    s1 = "Hello, "
    s2 = "world!"

    IO.puts(s1 <> s2)

    # lists
    list = [1, 2, 3, 4, 5]
    for item <- list do
      IO.puts(item)
    end

  end

  def exer04() do

    IO.puts("Lendo arquivo...")
    # file
    case File.read("./open.txt") do
      {:ok, file} -> {
        IO.puts("Arquivo lido com sucesso!"),
        File.mkdir("./tmp"),
        File.write("./tmp/text.txt", file)
      }
      {:error, reason} -> IO.puts(reason)
    end

  end

end

Test.main()
