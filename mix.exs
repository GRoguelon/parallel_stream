defmodule ParallelStream.Mixfile do
  use Mix.Project

  def project do
    [
        app: :parallel_stream,
        version: "0.1.0",
        elixir: "~> 1.1.0",
        deps: deps,
        package: package,
        docs: &docs/0,
        name: "CSV",
        consolidate_protocols: true,
        source_url: "https://github.com/beatrichartz/parallel_stream",
        description: "Parallel streams operations for Elixir"
    ]
  end

  defp package do
    [
        maintainers: ["Beat Richartz"],
        licenses: ["MIT"],
        links: %{github: "https://github.com/beatrichartz/parallel_stream" }
    ]
  end

  defp deps do
    [
      {:benchfella, only: :bench},
      {:ex_csv, only: :bench},
      {:csvlixir, only: :bench},
      {:cesso, only: :bench},
      {:ex_doc, only: :docs},
      {:inch_ex, only: :docs},
      {:earmark, only: :docs}
    ]
  end

  defp docs do
    {ref, 0} = System.cmd("git", ["rev-parse", "--verify", "--quiet", "HEAD"])

    [
        source_ref: ref,
        main: "overview"
    ]
  end
end
