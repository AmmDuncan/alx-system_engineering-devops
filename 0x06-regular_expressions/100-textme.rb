#!/usr/bin/env ruby
puts ARGV[0].scan(/((?<=from:).+?(?=\]))|((?<=to:).+?(?=\]))|((?<=flags:).+?(?=\]))/).select { |c| c }.join(',').scan(/[^,]+\,?/).join