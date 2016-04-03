class WelcomeController < ApplicationController
  def index

    host = 'http://baticueva.com/moodle'

    configuration          = Moodle::Api::Configuration.new
    configuration.host     = host
    configuration.username = 'batman'
    configuration.password = 'ellasellamabamartha'
    configuration.service  = 'justiceleague'
    p configuration

    token =  Moodle::Api::TokenGenerator.new(configuration).call

    # The client can also be instantiated and used.
    Moodle::Api.configure({host: host, token: token })

    #List all users
    params = { 'criteria[0][key]' => 'email', 'criteria[0][value]' => '%%' }
    @users = Moodle::Api.core_user_get_users(params)
    p @users

    #Find authenthicated user
    params = { 'criteria[0][key]' => 'username', 'criteria[0][value]' => configuration.username }
    @user = Moodle::Api.core_user_get_users(params)
    p @user

    #List courses of a user
    params = { 'userid' => '5' }
    @courses = Moodle::Api.core_enrol_get_users_courses(params)
    p @courses

    #List the users and roles in a course
    params = { 'courseid' => '5' }
    @course_users = Moodle::Api.core_enrol_get_enrolled_users(params)
    p @course_users

  rescue
    @message = "Usuario no encontrado"

  end
end
