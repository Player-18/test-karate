Feature: Get User Information

Scenario: Get details of authenticated user
  Given url 'https://api.github.com/user'
  And header Authorization = 'Bearer ' + githubToken
  When method get
  Then status 200
  And match response.login == '#notnull'
  And match response.id == '#number'
  * print 'User login:', response.login