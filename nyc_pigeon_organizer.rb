def nyc_pigeon_organizer(data)
 names = []
 purple_arr = []

data[:color][:purple].each do |x|
  purple_arr << x
end

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

  if h.key? ("Alex")
    h["Alex"][:color] << "white,brown"
    h["Alex"][:gender] << "male"
    h["Alex"][:lives] << "Central Park"
  end

  if h.key? ("Andrew")
    h["Andrew"][:color] << "white"
    h["Andrew"][:gender] << "male"
    h["Andrew"][:lives] << "City Hall"
  end

  if h.key? ("Queenie")
    h["Queenie"][:color] << "white,brown"
    h["Queenie"][:gender] << "female"
    h["Queenie"][:lives] << "Subway"
  end

  if h.key? ("Ms. K")
    h["Ms. K"][:color] << "grey, white"
    h["Ms. K"][:gender] << "female"
    h["Ms. K"][:lives] << "Central Park"
  end

  if h.key? ("Lucky")
    h["Lucky"][:color] << "purple"
    h["Lucky"][:gender] << "male"
    h["Lucky"][:lives] << "Central Park"
  end

  if h.key? ("Peter Jr.")

    h["Peter Jr."][:color] << "purple,grey"
    h["Peter Jr."][:gender] << "male"
    h["Peter Jr."][:lives] << "Library"
  end


    h


end
