# slack post 
module SlackPost
  def post_to_slack(boxname)
# register slack
  notifier = Slack::Notifier.new "https://hooks.slack.com/services/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", channel: '#jenkins_london', username: 'electric_penguin'         
    notifier.ping boxname
    end

end
World(SlackPost)
