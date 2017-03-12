class InquiryChatwork

  require 'net/https'
  require 'json'

  def push_chatwork_message(inquiry)

    @inquiry = inquiry

    @uri = URI.parse('https://api.chatwork.com')
    @client = Net::HTTP.new(@uri.host, 443)
    @client.use_ssl = true

    ##### ChatWork APIトークン (~/.bashrcに追加した環境変数から取得する)
    @chatwork_api_token = ENV["CHATWORK_API_TOKEN"]

    ##### ChatWorkへメッセージを通知するルームID (~/.bashrcに追加した環境変数から取得する)
    @message_room_id = ENV["CHATWORK_ROOM_ID"]

    ##### ChatWorkへ通知するメッセージタイトル
    @message_title = "Ruby on Rails 5で作った問い合わせフォームから問い合わせがありました。問い合わせ内容をChatWorkへ通知します。"

    ##### Chatworkへ通知するメッセージ内容
    @message_text = "[info][title]" << @message_title << "[/title]"
    @message_text = @message_text << @inquiry.name << "\n" << @inquiry.email << "\n" << @inquiry.phone << "\n" << @inquiry.message << "[/info]"

    ##### ChetWorkへメッセージ送信
    @res = @client.post( "/v2/rooms/#{@message_room_id}/messages", "body=#{@message_text}", {"X-ChatWorkToken" => "#{@chatwork_api_token}"} )

    puts JSON.parse(@res.body)

  end
 
end
