class PostPolicy < ApplicationPolicy
    def show?
        record.published? || record.user == user
        
    end

    
    def publish?
        user.id == record.user_id
    end
end