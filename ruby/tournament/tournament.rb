require 'pry'

class Tournament
    attr_reader :input,
                :teams

    def initialize(input)
        @input = input
        @teams = Hash.new { |hash, key| hash[key] = empty_team }
    end
    
    
    def self.tally(input)
        new(input).tally
    end
    
    def tally
        build_teams(input)
        header = "Team                           | MP |  W |  D |  L |  P" + "\n"
        team_rows = teams.map do |team_name, game_info|
           "#{team_name.ljust(31)}|  #{game_info[:matches_played]} |  #{game_info[:win]} |  #{game_info[:draw]} |  #{game_info[:loss]} |  #{game_info[:points]}\n"
        end.join
        
        header + team_rows
    end

    
    def build_teams(input)
        games = input.split("\n")
        games.each do |game|
            home, away, result = game.split(";")
            case result
            when "win"
                teams[home][:matches_played] += 1
                teams[away][:matches_played] += 1
                teams[home][:win] += 1
                teams[away][:loss] += 1
                teams[home][:points] += 3
                teams[away][:points] += 0
            when "loss"
                teams[home][:matches_played] += 1
                teams[away][:matches_played] += 1
                teams[home][:loss] += 1
                teams[away][:win] += 1
                teams[home][:points] += 0
                teams[away][:points] += 3
            when "draw"
                teams[home][:matches_played] += 1
                teams[away][:matches_played] += 1
                teams[home][:draw] += 1
                teams[away][:draw] += 1
                teams[home][:points] += 1
                teams[away][:points] += 1
            end
        end
    end

    def empty_team
        { matches_played: 0, win: 0, loss: 0, draw: 0, points: 0 }
    end
end