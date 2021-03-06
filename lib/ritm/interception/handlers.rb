
def default_request_handler(session)
  proc do |req|
    session.dispatcher.notify_request(req) if session.conf.intercept.enabled
  end
end

def default_response_handler(session)
  proc do |req, res|
    session.dispatcher.notify_response(req, res) if session.conf.intercept.enabled
  end
end
