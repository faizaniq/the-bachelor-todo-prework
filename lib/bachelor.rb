require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |person|
   person.each do |key,value|
    if value == "Winner"
      full_name = person["name"]
        return full_name.split(" ")[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, array|
    array.each do |person|
      person.each do |key, value|
        if value == occupation
          return person["name"]
        end
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  # code here
count = 0
  data.each do |season, array|
    array.each do |person|
      person.each do |key, value|
        if value == hometown
          count += 1
        end
      end
    end
  end
  count
end



def get_occupation(data, hometown)
  # code here
  data.each do |season, array|
    array.each do |person|
      person.each do |key, value|
        if value == hometown
          return person["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  count = 0
  age = 0
  data[season].each do |person|
    person.each do |key, value|
      person.each do |key, value|
        if key == "age"
          count += 1
          age += value.to_f
        end
      end
    end
  end
  average_age = (age/count).round
  return average_age
end
