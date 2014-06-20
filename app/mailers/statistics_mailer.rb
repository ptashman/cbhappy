class StatisticsMailer < ActionMailer::Base
  default from: "noreply@cbhappy.com"
  def monthly_stats(recipient)
    mail(to: recipient, subject: "Monthly Happiness Statistics")
  end
end
