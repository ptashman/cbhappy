class StatisticsMailer < ActionMailer::Base
  default to: "paultashman@gmail.com", from: "from@example.com"
  def monthly_stats()
    mail(subject: "Monthly Happiness Statistics")
  end
end
