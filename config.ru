Dir['app/*'].each {|c| require c }
require File.join(File.dirname(__FILE__), 'lib', '140')

run lambda {|e|
  e['REQUEST_PATH'] = '/main' if e['REQUEST_PATH'] == '/'
  F.call(e)
}
