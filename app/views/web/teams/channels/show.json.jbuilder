# frozen_string_literal: true

json.channel @channel
json.channels resource_team.channels
json.partial! partial: 'shared/messages', collection: @messages, as: :messages
