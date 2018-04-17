
def nyc_pigeon_organizer(data)
 names = [] 
  data.each do |attributes, values|
     
     if attributes == :gender 
       
        values.each do |gender,pidgeon_names|
           names << pidgeon_names 
        end 
  
     end
    
  end 
  
  name_arr = names.flatten
  
 h = name_arr.map{|x|[x,{}]}.to_h 
 
 h.each do |x,y|
   y[:color] = []
    
 end 
 
 h.each do |x,y|
   y[:gender] = [] 
  end 
  
  h.each do |x,y|
    y[:lives] = [] 
  end 
 
 
end