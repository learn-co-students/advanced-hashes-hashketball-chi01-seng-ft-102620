# Write your code below game_hash

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


require 'pry'
# Write code here
def num_points_scored(name)
  players = game_hash[:home][:players] + game_hash[:away][:players]
  players.each do |stats|
    if stats[:player_name] == name
      return stats[:points]
    end
  end
end


def shoe_size(name)
  players = game_hash[:home][:players] + game_hash[:away][:players]
  players.each do |stats|
    if stats[:player_name] == name
      return stats[:shoe]
    end
  end
end

def team_colors(name_of_team)
  home_team = game_hash[:home][:team_name]
  away_team = game_hash[:away][:team_name]
  if home_team == name_of_team
    return game_hash[:home][:colors]
  elsif away_team == name_of_team
    return game_hash[:away][:colors]
  end
end

def team_names
  teams = []
  teams.push(game_hash[:home][:team_name], game_hash[:away][:team_name])
  return teams
end

def player_numbers(name_of_bball_teams)
  home_team = game_hash[:home][:team_name]
  away_team = game_hash[:away][:team_name]
  home_numbers = []
  away_numbers = []
  home_players = game_hash[:home][:players]
  away_players = game_hash[:away][:players]
  if name_of_bball_teams == home_team
    home_players.each do |player_stats|
      home_numbers << player_stats[:number]
    end
    home_numbers
  elsif name_of_bball_teams == away_team
    away_players.each do |player_stats|
      away_numbers << player_stats[:number]
    end
    away_numbers
  end
end

def player_stats(name)
  players = game_hash[:home][:players] + game_hash[:away][:players]
  players.each do |stats|
    if stats[:player_name] == name
      return stats
    end
  end
end

def big_shoe_rebounds
  shoe_sizes = []
  players = game_hash[:home][:players] + game_hash[:away][:players]
  players.each do |stats|
    shoe_sizes << stats[:shoe]
  end
  shoe_sizes.uniq!
  shoe_sizes.sort!
  biggest_shoe_size = shoe_sizes.last
  players.each do |stats|
    if stats[:shoe] == biggest_shoe_size
      return stats[:rebounds]
    end
  end
end
