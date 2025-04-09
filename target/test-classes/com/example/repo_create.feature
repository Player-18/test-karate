Feature: Repository Management

Scenario: Create and delete repository
  Given url 'https://api.github.com/user/repos'
  And header Authorization = 'Bearer ' + githubToken
  And header Accept = 'application/vnd.github.v3+json'
  And request { name: 'test-repo', description: 'Test repository', private: false }
  When method post
  Then status 403