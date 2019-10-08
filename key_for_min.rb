# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash == {}
    return nil
  else
    smallest_value = nil
    smallest_name = nil
    name_hash.collect do |key, value|
      if smallest_value == nil
        smallest_value = value
        smallest_name = key
      elsif smallest_value >= value
        smallest_value = value
        smallest_name = key
      end
    end
    return smallest_name
  end
end

#accumulation pattern