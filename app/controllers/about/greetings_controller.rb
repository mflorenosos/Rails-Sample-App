module About
  class GreetingsController < ApplicationController
    def greet_me
      greet_me = params[:greet_me]
      status = greet_me_response_status(greet_me)
      page_title = 'Greet Me'
      site_title = "About | Greetings | Good #{greet_me}!"

      respond_to do |format|
        format.html {
          render locals: {
            site_title: site_title,
            page_title: page_title,
            greet_me: greet_me,
            status: status
          }, status: status
        }
        format.js {
          render locals: {
            greet_me: greet_me,
            status: status
          }, status: response.status
        }
      end
    end

    private

      def greet_me_response_status(greet_me)
        greetings_list.include?(greet_me) ? 200 : 404
      end

      def greetings_list
        ['morning', 'afternoon', 'evening']
      end
  end
end