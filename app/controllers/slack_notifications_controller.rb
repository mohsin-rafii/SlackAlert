require 'slack-notifier'
class SlackNotificationsController < ApplicationController

  def send_notification
    payload = JSON.parse(request.body.read)
    begin
      #check if the type matches the requirement
      if payload['Type'] == 'SpamNotification'
        email = payload['Email']
        description = payload['Description']
        message = "Notification for #{email}: #{description}"
        slack_notifier.ping message
        render json: { message: 'Notification sent'}
      else
        render json: { message: 'Notification not sent'}
      end
    rescue Exception => e
      p 'Error occured'
      p "Here is the error ::: #{e}"
      render json: { message: "Error occured: #{e}"}
    end
  end

  private

  def slack_notifier
    #update webhook url in config/initializers/slack_notifier.rb
    @slack_notifier ||= Slack::Notifier.new SLACK_WEBHOOK_URL
  end

end