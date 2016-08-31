defmodule Lab1IntTest do
  use ExUnit.Case

  def count(str) do
    Lab1Int.count(str)
  end

  test "word counter" do
    assert count("") == %{}

    assert count("          ") == %{}

    assert count("foo") == %{"foo" => 1}

    assert count("foo bar") == %{"foo" => 1, "bar" => 1}

    assert count("foo bar foo foo bar") == %{"foo" => 3, "bar" => 2}
  end
end
