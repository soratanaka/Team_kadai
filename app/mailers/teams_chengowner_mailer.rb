class TeamsChengownerMailer < ApplicationMailer
  def chengowner_mail(team)
    @team = team
    @user = User.find(@team.owner_id)
    mail to: @user.email, subject: "チーム権限移譲メール"
  end
end
