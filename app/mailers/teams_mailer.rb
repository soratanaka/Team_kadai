class TeamsMailer < ApplicationMailer
  def team_mail(team)
    @team = team

    mail to: @team.email, subject: "通知メール"
  end

end
