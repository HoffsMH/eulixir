defmodule FiftyTwo do
  def solve(num) do
    # 125874
    IO.puts(num)

    (verify_same_digits(num, num * 2) && verify_same_digits(num, num * 3) &&
       verify_same_digits(num, num * 4) && verify_same_digits(num, num * 5) &&
       verify_same_digits(num, num * 6)) || solve(num + 1)
  end

  def verify_same_digits(num1, num2) when num1 === num2,
    do: true

  def verify_same_digits(num1, num2) when is_integer(num1) and is_integer(num2),
    do: verify_same_digits(get_digit_array(num1), get_digit_array(num2))

  def verify_same_digits(digits1, digits2) do
    Enum.empty?(digits1 -- digits2) && Enum.empty?(digits2 -- digits1)
  end

  def get_digit_array(num), do: String.graphemes(to_string(num))
end
