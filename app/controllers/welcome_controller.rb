class WelcomeController < ApplicationController
  def index

    configuration = Moodle::Api::Configuration.new
    configuration.host = 'htt://yourwebsite.com'
    configuration.username = 'username'
    configuration.password = 'password'
    configuration.service = 'yourservice'
    configuration

    p Moodle::Api::TokenGenerator.new(configuration).call
    
    #List all users
    params = { 'criteria[0][key]' => 'email', 'criteria[0][value]' => '%%' }
    @users = Moodle::Api.core_user_get_users(params)
    p @users

    #Find only 1 user
    params = { 'userids[0]' => '3'}
    @user = Moodle::Api.core_user_get_users_by_id(params)
    p @user

    #List courses of a user
    params = { 'userid' => '3' }
    @courses = Moodle::Api.core_enrol_get_users_courses(params)
    p @courses

    #List the users and roles in a course
    params = { 'courseid' => '2' }
    @course_users = Moodle::Api.core_enrol_get_enrolled_users(params)
    p @course_users

     

  end
end
