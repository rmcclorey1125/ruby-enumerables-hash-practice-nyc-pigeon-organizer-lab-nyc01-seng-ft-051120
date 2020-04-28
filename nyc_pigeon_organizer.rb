def nyc_pigeon_organizer(data)
  # write your code here!
  organized_hash = {}
  data.each do |about, hash|
    hash.each do |details, array|
      array.each do |name|
        if !organized_hash.has_key?(name)
          organized_hash[name] = {}
        end
        if !organized_hash[name].has_key?(about)
          organized_hash[name][about] = []
        end
        if !organized_hash[name][about].include?(details)
          organized_hash[name][about].push(details.to_s)
        end
      end
    end
  end
  organized_hash
end
