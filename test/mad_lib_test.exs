defmodule MadLibTest do
  use ExUnit.Case
  doctest MadLib

  test "greets the world" do
    assert MadLib.hello() == :world
  end
end
