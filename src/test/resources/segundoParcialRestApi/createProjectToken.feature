Feature: Project Clean

  Scenario: As admin user
  I want to create, update and delete a project
  So that i am able to manipulate the project




    When I send a request GET to url https://todo.ly/api/authentication/token.json with json
    """
    """
    Then I expected response code 200



    #Delete Token
    When I send a request DELETE to url https://todo.ly/api/authentication/token.json with json

    Then I expected response code 200





