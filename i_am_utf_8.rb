#encoding: UTF-8

encodings = [
  "w:UTF-8",
  "w:UTF-16LE",
  "w:UTF-16BE",
  "w+b:BOM|UTF-8",
  "w+b:BOM|UTF-16LE",
  "w+b:BOM|UTF-16BE",
  "w+b:BOM|UTF-16LE:UTF-8",
  "w+b:BOM|UTF-16BE:UTF-8"
]
str = "aaaあああ"

encodings.each do |encoding|
  File::open(encoding.gsub(/[\|\-\+\:]/, "_") + ".txt", encoding){|f|
    f.write(str)
  }
end

