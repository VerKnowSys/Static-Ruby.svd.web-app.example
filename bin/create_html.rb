#!/usr/bin/env ruby

# PBS 4 Dec. 2013
# Renders HTML for all the .md files in the current directory.


require 'rdiscount'
require 'find'
require 'fileutils'

def markdown_file?(f)

  filename = File.basename(f)

  if filename[0] == ?. then return false end
  if FileTest.directory?(f) then return false end

  extension = File.extname(filename)
  if extension == '.md' then return true end

  return false

end

def text_of_file(f)

  file = File.open(f, 'r')
  s = file.read
  file.close

  return s
end

def filename_with_suffix_dropped(filename)

  filename_array = filename.split('.')
  filename_array.delete_at(filename_array.length - 1)
  filename = filename_array.join('.')

  return filename
end

def filename_with_suffix_changed(filename, new_suffix)

  filename = filename_with_suffix_dropped(filename)
  return filename + new_suffix
end

def write_file(s, f)

  FileUtils.mkdir_p(File.dirname(f))

  f = File.open(f, 'w')
  f.puts(s)
  f.close
end

def html_text_for_file(f)

  markdown_text = text_of_file(f)

  html_text = RDiscount.new(markdown_text).to_html
  filename = File.basename(f)

  title = filename_with_suffix_dropped(filename)
  style = "<style>body {margin-top: 3em;}\n.content {width: 33em; margin-left: 7em; margin-right: auto}</style>\n"
  file_text = "<html>\n<head><title>#{title}</title>#{style}</head></body><div class=content>#{html_text}</div></body></html>"

  return file_text
end

def generate_and_write_html(f)

  filename = File.basename(f)
  html_filename = filename_with_suffix_changed(filename, '.html')

  folder = File.dirname(f)
  html_folder = folder + "/"

  html_filepath = html_folder + html_filename
  html_text = html_text_for_file(f)
  write_file(html_text, html_filepath)
end


folder = Dir.pwd
Find.find(folder) do |f|

  filename = File.basename(f)

  if markdown_file?(f)

    print(filename + "\n")
    generate_and_write_html(f)

  end
end
