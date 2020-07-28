  AllPngFilesInDirectory = Dir.glob("*.png")
  AllPngFilesAmount = AllPngFilesInDirectory.size
  i = 0
  while i < AllPngFilesAmount
    File.delete("#{AllPngFilesInDirectory[i]}")
    i += 1
  end
  puts "png files deleted"
  AllHtmlFilesInDirectory = Dir.glob("*.html")
  AllHtmlFilesAmount = AllHtmlFilesInDirectory.size
  i = 0
  while i < AllHtmlFilesAmount
    File.delete("#{AllHtmlFilesInDirectory[i]}")
    i += 1
  end
  puts "html files deleted"
