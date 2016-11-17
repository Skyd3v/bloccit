module UsersHelper
    def user_has_made_posts?(user)
        user.posts.count > 0
      end

    def user_has_made_comments?(user)
        user.comments.count > 0
    end
end
