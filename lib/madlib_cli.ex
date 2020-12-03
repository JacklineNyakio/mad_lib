# Prompt user for a noun, verb, adverb and an adjective and interject this into a story.

# ****************************************************************
# CLI programs -> Input, Output
# Input -> Options passed to the app, (-h or --help, -v, or version)
# request for the user's input (arguments)
defmodule MadLib.CLI do
  def main(argv) do
    argv
    |> parse_args()
    |> process()
  end

  defp parse_args(argv) do
    OptionParser.parse(argv, switches: [help: :boolean],
                              aliases: [h: :help])
    |> elem(1)
    |> internal_rep()
  end

  # noun, verb, adverb, adjective are passed
  defp internal_rep([noun, verb, adjective, adverb]) do
    { noun, verb, adjective, adverb }
  end

  # Option for :help is passed
  defp internal_rep(_) do
    :help
  end

  defp process({ noun, verb, adjective, adverb }) do
    form(noun, verb, adjective, adverb)
  end

  defp process(:help) do
    IO.puts "usage: mad_lib pass <noun> <verb> <adverb> <adjective> \n-> get a hilarious sentense"
    System.halt(0)
  end

  defp process(_) do
    :help
  end

  defp form(noun, verb, adjective, adverb) do
    IO.puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious"
  end
 end
