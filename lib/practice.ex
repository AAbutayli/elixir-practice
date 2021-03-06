defmodule Practice do
  @moduledoc """
  Practice keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def double(x) do
    2 * x
  end

  def calc(expr) do
    # This is more complex, delegate to lib/practice/calc.ex
    Practice.Calc.calc(expr)
  end

  def factor(x) do
    # Maybe delegate this too.
    [1,2,x]
  end

  def palindrome(str) do
    str1 = String.downcase(str, :default)
    if String.reverse(str1) == str1 do
     "The string #{str} is palindrome"
    else
     "The string #{str} is NOT palindrome"
    end
  end

end
