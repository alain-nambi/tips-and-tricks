defmodule FileMover do
  @moduledoc """
  Documentation for FileMover.
  """

  @doc """
  Move files.

  ## Examples

      iex> FileMover.move_files("/home/alain/Videos")
      [:ok, :ok]

  """
  def move_files(directory) do
    # Excepted extensions
    unauthorized_extensions = ["ex", "rar", "zip", "git"]

    # Get list of all files in directory
    files = 
      File.ls!(directory)

    # For each file, determine extension and create new subdirectory
    for file <- files do
      # Get all extensions without dots (.)
      extension = 
        Path.extname(file)
        |> String.split(".")
        |> Enum.at(1)

      if not is_nil(extension) do
         if not Enum.any?(unauthorized_extensions, fn ext -> ext == extension end) do
          # Create a new subdirectory linked to the extension file
          sub_directory = Path.join([directory, extension])
          File.mkdir_p!(sub_directory)

          # Move the file to the corresponding directory
          new_path = Path.join([sub_directory, Path.basename(file)])
          File.rename(file, new_path)
        end
      end
    end
  end
end

