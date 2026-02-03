require 'telegram/bot'

token = '8473301830:AAGsOw9K4eSFdPczbsgrF9aQ6L68JnIkgAs'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    if message.text == '/start'
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Привіт! Я ехо-бот 🤖"
      )
    else
      bot.api.send_message(
        chat_id: message.chat.id,
        text: message.text
      )
    end
  end
end
