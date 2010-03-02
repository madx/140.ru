require '140'

run lambda {|e|
  e['REQUEST_PATH'] = '/main' if e['REQUEST_PATH'] == '/'
  F.call(e)
}
