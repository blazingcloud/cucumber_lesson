Feature: Story JSON API
  In order to view news
  As a device or client application using the JSON REST interface
  I want to make GET requests to the /stories URL

  Scenario: get a list of stories
    When I request: /stories.json
    Then I get a 200 (success) status result
    And the response header Content-Type matches application/json
    And the response should match json:
    """
    { "request": "http://www.example.com/stories.json",
      "result": [
         {
             "title": "Earthquake",
             "content": "It was big."
         },
         {
             "title": "Flood",
             "content": "Lots of water."
         }
         

        ] ,
     "status" : { "code": 200, "message":  "ok" }
    }
  """

