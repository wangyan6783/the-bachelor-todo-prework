def get_first_name_of_season_winner(data, season)
  season_arr = data[season]
  season_arr.each { |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split[0]
    end
  }
end

def get_contestant_name(data, occupation)
  data.each { |season, contestants|
    contestants.each { |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each { |season, contestants|
    contestants.each { |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    }
  }
  count
end

def get_occupation(data, hometown)
  data.each { |season, contestants|
    contestants.each { |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    }
  }
end

def get_average_age_for_season(data, season)
  season_arr = data[season]
  age_sum = 0
  season_arr.each { |contestant|
    age_sum += contestant["age"].to_f
  }
  (age_sum / season_arr.length).round
end
