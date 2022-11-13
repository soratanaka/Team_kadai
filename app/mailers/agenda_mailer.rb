class AgendaMailer < ApplicationMailer
  def agenda_mail(team_members)
    @members = team_members
    mail to: @members.map(&:email).join(","), subject: "アジェンダ削除"
  end
end