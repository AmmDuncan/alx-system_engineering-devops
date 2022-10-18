#!/usr/bin/env ruby
puts ARGV[0].scan(/((?<=from:).+?(?=\]))|((?<=to:).+?(?=\]))|((?<=flags:).+?(?=\]))/).select { |c| c }.join(',').scan(/[a-z0-9A-Z\-\:]+\,?/).join