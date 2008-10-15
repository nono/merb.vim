# http://github.com/ryanb/dotfiles/tree/master/Rakefile

require 'rake'
 
desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  Dir['**/*.vim'].each do |file|
    if File.exist?(File.join(ENV['HOME'], ".vim", file))
      if replace_all
        replace_file(file)
      else
        print "overwrite ~/.vim/#{file}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file}"
        end
      end
    else
      link_file(file)
    end
  end
end
 
def replace_file(file)
  system %Q{rm "$HOME/.vim/#{file}"}
  link_file(file)
end
 
def link_file(file)
  puts "linking ~/.vim/#{file}"
  dest = File.join(ENV['HOME'], ".vim", file)
  dir = File.dirname(dest)
  create_directory(dir) unless File.exists?(dir)
  system %Q{ln -s "$PWD/#{file}" "#{dest}"}
end

def create_directory(dir)
  parent = File.dirname(dir)
  create_directory(parent) unless File.exists?(parent)
  Dir.mkdir(dir)
end
