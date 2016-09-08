module SiteHelpers
  def home
    @home ||= Panel::HomeSite.new
  end
end
