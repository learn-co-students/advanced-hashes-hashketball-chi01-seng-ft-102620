require 'pry'
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

def num_points_scored(player_name)
  game_hash.each do |team,info|
        info[:players].each do |n| #Access the elements in the players array(which are also hashes). Iterate over each element
      if n[:player_name]==(player_name)
        return n[:points]
    end
   end
  end
end

def shoe_size(player_name)
  game_hash.each do |team,info|
      info[:players].each do |n| #Access the elements in the players array(which are also hashes). Iterate over each element
      if n[:player_name]==(player_name)
        return n[:shoe]
    end
   end
  end
end

def team_colors(team_name)
  game_hash.each do |team,info|
    if info[:team_name]==team_name
      return info[:colors]
    end
  end
end

def team_names
  tnames=[] #Alter original array
  game_hash.map do |team,info|
        info[:team_name]
        tnames.push(info[:team_name])
  end
 return tnames
end

def player_numbers(team_name)
  pnumbers=[]
    game_hash.map do |team,info|
      if info[:team_name]==team_name
         info[:players].map do |n|
       pnumbers.push(n[:number])
    end
   end
  end
 pnumbers
 end

 def player_stats(player_name)
   pstats={}
  game_hash.map do |team, info|
    info[:players].map do |n|
      if n[:player_name] == player_name
         pstats=n
       end
     end
    end
    pstats
  end

  def big_shoe_rebounds
    shoes=0
    rebounds=0
    game_hash.map do |team, info|
    info[:players].map do |n|
    if n[:shoe]>shoes
        shoes=n[:shoe]
         rebounds=n[:rebounds]
   end
  end
 end
rebounds
end

def most_points_scored
  points=0
  game_hash.map do |team, info|
  info[:players].map do |n|
  if n[:points]>points
      points=n[:points]
   end
  end
 end
points
end

#for winning team sum up points for both and compare
#longest name use .count or split and count
