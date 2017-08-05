#!/usr/bin/env ruby
# Remove all gems EXCEPT defaults :)
# https://stackoverflow.com/questions/21384664/how-to-uninstall-all-gems-installed-using-bundle-install

`gem list -d`.split(/\n\n^(?=\w)/).each do |data|
  match = data.match(/(?<name>([^\s]+)) \((?<versions>.*)\)/)
  name = match[:name]
  versions = match[:versions].split(', ')

  if match = data.match(/^.*\(([\d\.]*),? ?default\): .*$/)
    next if match[1].empty? # it's the only version if this match is empty
    versions.delete(match[1] || versions[0])
  end

  versions.each { |v| system "gem uninstall -Ix #{name} -v #{v}" }
end
