def compare a, b
  a_id_ct = a.scan("#").count
  a_class_ct = a.scan(".").count
  a_tag_ct = a.scan(/\w+/).count
  
  b_id_ct = b.scan("#").count 
  b_class_ct = b.scan(".").count
  b_tag_ct = b.scan(/\w+/).count
  
  puts a_id_ct
  puts b_id_ct
  
  if a_id_ct > b_id_ct
    return a
  elsif b_id_ct > a_id_ct
    return b
  elsif a_id_ct == b_id_ct
    if a_class_ct > b_class_ct
      return a
    elsif b_class_ct > a_class_ct
      return b
    elsif a_class_ct == b_class_ct
      if a_tag_ct > b_tag_ct
        return a
      elsif b_tag_ct > a_tag_ct
        return b
      elsif a_tag_ct == b_tag_ct
        return b
      end
    end
  end
end
