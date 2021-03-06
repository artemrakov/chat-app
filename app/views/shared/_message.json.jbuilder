# frozen_string_literal: true

json.id message.id
json.content message.content
json.channel_id message.channel_id
json.team_id message.team_id
json.user_id message.user_id
json.user_email message.user.email
json.actions_allowed message.user.id == current_user.id
