require 'csv'

class Tournament
  def self.tally(input)
    input = input.split("\n")

    # teams["team name"] = [win_count, loss_count, draw_count]
    teams = input.each_with_object({}) do |line, teams|
      line = line.split(";")
      if line[2] == "win"
        teams[line[0]] ? teams[line[0]][0] += 1 : teams[line[0]] = [1, 0, 0]
        teams[line[1]] ? teams[line[1]][1] += 1 : teams[line[1]] = [0, 1, 0]
      elsif line[2] == "loss"
        teams[line[0]] ? teams[line[0]][1] += 1 : teams[line[0]] = [0, 1, 0]
        teams[line[1]] ? teams[line[1]][0] += 1 : teams[line[0]] = [1, 0, 0]
      else
        teams[line[0]] ? teams[line[0]][2] += 1 : teams[line[0]] = [0, 0, 1]
        teams[line[1]] ? teams[line[1]][2] += 1 : teams[line[0]] = [0, 0, 1]
      end
    end

    output = <<~TALLY
      Team                           | MP |  W |  D |  L |  P
    TALLY

    teams.each do |team_name, games|
      output << "\n#{team_name}"
      (31 - team_name.length).times do 
        output << " "
      end
      output << "|  #{games.sum} |  #{games[0]} |  #{games[2]} |  #{games[1]} |  #{(games[0] * 3) + (games[2])}"
    end
    output
  end
end