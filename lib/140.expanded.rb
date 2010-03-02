F = lambda {|env|
  env['REQUEST_PATH'][1..-1].split('/').
    map {|p| p.camelize }.
    inject(Kernel) {|mod,cl| mod.const_get(cl) rescue NotFound }.
    call(env)
}
