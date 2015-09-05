module ApplicationHelper
  def movies_to_pick
    @movies = Movie.all
  end

  def users
    @users = User.all
  end

  def clubs
    @clubs = Club.all
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def status_values
    @status_values = [['Vill gå med i klubb', 1], ['Vill starta klubb', 2], ['Letar klubb', 3]]
    return @status_values
  end

  def banner_colors
    @banner_colors = [["red", "red"], ["blue", "blue"], ["black", "black"], ["grey", "grey"], ["green", "green"]]
    return @banner_colors
  end
end
