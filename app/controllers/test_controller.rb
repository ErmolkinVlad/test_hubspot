class TestController < ActionController::Base
  def second_request
    return head :ok
  end

  def first_request
    response = ::HTTParty.post(
      "https://api.trello.com/1/tokens/11c612dae0a68cd5bbcd4a4106021c50744566c0774a5cfaf3a85af0bcb77e55/webhooks/?key=21c6db4e10ea3f125fb62123ecc2bb36",
      query: {
        callbackURL: second_request_url,
        idModel: '5f1ead023a89e6248b8c601b'
      }
    )
    render json: { ok: response }
  end
end