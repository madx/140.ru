F=lambda{|e|e['REQUEST_PATH'][1..-1].split('/').map(&:camelize).inject(Kernel){|m,c| m.const_get(c) rescue NotFound }.call(e)} #140.ru
