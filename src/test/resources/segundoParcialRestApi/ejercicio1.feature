Feature: Usuario Clean

  #este es un comentario
  @Usuarios
  Scenario: As admin user
  I want to create, update and delete a project
  So that i am able to manipulate the project

    Given I have access to Todo.ly
    When I send a request POST to url https://todo.ly/api/user.json with json
    """
    {
      "Email":"nuria@michel3.com",
      "FullName":"nuria",
      "Password": "nuriamichel"
     }
    """
    Then I expected response code 200
    And I expected the response body
    """
    {
    "Id": "IGNORE",
    "Email": "nuria@michel.com",
    "Password": "nuriamichel",
    "FullName": "nuria",
    "TimeZone": "IGNORE",
    "IsProUser": false,
    "DefaultProjectId": "IGNORE",
    "AddItemMoreExpanded": false,
    "EditDueDateMoreExpanded": false,
    "ListSortType": "IGNORE",
    "FirstDayOfWeek": "IGNORE",
    "NewTaskDueDate": "IGNORE",
    "TimeZoneId": "IGNORE"
}

    """
