module ApplicationHelper
    def avatar_url(user)
        gravatar_id = Digest::MD5::hexdigest(user.email).downcase
        "http://gravatar.com/avatar/#{gravatar_id}?s=100&d=robohash&r=x.png"
    end
end
