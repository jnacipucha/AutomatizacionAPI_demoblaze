Feature: Post user https://api.demoblaze.com/login

  Background:
    * url "https://api.demoblaze.com"
    * path "/login/"

  @Exercise2
  Scenario Outline: Create user <idcase>
    When request
    """
    {
    "<username>": "<Vusername>",
    "<password>": "<Vpassword>"
    }
    """
    And method POST
    Then status <statuscode>
    Examples:
      | idcase | username | Vusername                  | password | Vpassword  | statuscode |
      | case 1 | username | jnacipucha                 | password | admin123.. | 200        |
      | case 2 | username | dadadasdasdasdasdasdadsasd | password | 123456789  | 200        |

