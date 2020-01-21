module PostsHelper
    def show_post_buttons(post)
        html = ''
        if post.user == current_user
          html += '<td id="edit">'
          html += link_to 'Edit', edit_post_path(post)
          html += '<br><br>'
          html += link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }
          html += '</td>'
        end

        html.html_safe
      end

      def show_edit_button(post)
        link_to 'Edit', edit_post_path(post) if post.user == current_user
      end
end