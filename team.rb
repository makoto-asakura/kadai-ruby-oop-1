#クラス定義
class Team

  #オブジェクトの変数(値)
  attr_accessor :name, :win, :lose, :draw
 
  # 初期化用の特別なメソッド
  def initialize(name,win,lose,draw)
    self.name=name
    self.win=win
    self.lose=lose
    self.draw=draw
  end
  
  # インスタンスが持つメソッド（処理）
  def calc_win_rate
    self.win.to_f / (self.win.to_f + self.lose.to_f)
  end
  
  def show_team_result
    puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}負 #{self.draw}分、 勝率は #{calc_win_rate}です。"
  end
end
  
  #インスタンスの生成
  giants=Team.new("Giants",67,45,8)
  tigers=Team.new("Tigers",60,53,7)
  dragons=Team.new("Dragons",60,55,5)
  bay_stars=Team.new("Baystars",56,58,6)
  carp=Team.new("Carp",52,56,12)
  swallows=Team.new("Swallows",41,69,10)
  
  #インスタンスの使用
  giants.show_team_result
  tigers.show_team_result
  dragons.show_team_result
  bay_stars.show_team_result
  carp.show_team_result
  swallows.show_team_result
