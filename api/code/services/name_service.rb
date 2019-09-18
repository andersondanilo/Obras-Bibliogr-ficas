class NameService
  def convert_to_author_name(name)
    pieces = name.to_s.split(' ')
    last_names = pieces.pop.to_s.upcase
    
    if need_another_last_name?(last_names) && pieces.length > 1
      last_names = pieces.pop.upcase + ' ' + last_names
    end

    first_names = pieces.map(&method(:capitalize)).join(' ')

    [last_names, first_names].select{|n| n.length > 0}.join(', ')
  end

  def need_another_last_name?(last_name)
    list = ['FILHO', 'FILHA', 'NETO', 'NETA', 'SOBRINHO', 'SOBRINHA', 'JUNIOR']
    list.include? last_name
  end

  def capitalize(name)
    name = name.downcase

    ignore = ['da', 'de', 'do', 'das', 'dos']

    if ignore.include?(name)
      return name
    end

    name.capitalize
  end
end
