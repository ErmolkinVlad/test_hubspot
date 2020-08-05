class SecondTestController < ActionController::Base
  def second_request
    return head :ok
  end
end