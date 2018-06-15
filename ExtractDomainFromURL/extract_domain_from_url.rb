# https://www.codewars.com/kata/514a024011ea4fb54200004b/train/ruby

def domain_name(url)
  url.gsub(/^https?\:\/\/(www.)?/,'').split(".com")[0]
end