class FavoriteMailer < ApplicationMailer
    default from: 'a.anthopoulos02@gmail.com'
    layout 'mailer'

    def new_comment(user, post, comment)
        # #18
        headers['Message-ID'] = "<comments/#{comment.id}@your-app-name.example>"
        headers['In-Reply-To'] = "<post/#{post.id}@your-app-name.example>"
        headers['References'] = "<post/#{post.id}@your-app-name.example>"

        @user = user
        @post = post
        @comment = comment

        # #19
        mail(to: user.email, subject: "New comment on #{post.title}")
     end

    def new_post(post)
        headers['Message-ID'] = "<post/#{post.id}@your-app-name.example>"
        headers['In-Reply-To'] = "<post/#{post.id}@your-app-name.example>"
        headers['References'] = "<post/#{post.id}@your-app-name.example>"

        @post = post

        mail(to: post.user.email, subject: "Now following #{post.title} post")
     end
end
