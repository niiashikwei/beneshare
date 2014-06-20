class Request < ActiveRecord::Base
  enum request_type: [ :flight, :room ]
end
