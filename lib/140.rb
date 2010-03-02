F=lambda{|e|p=e['REQUEST_PATH'][1..-1];Dir['app/*'].map{|c|require c};File.exist?("app/#{p}.rb")?eval(p.camelize).call(e):NotFound.call(e)}
