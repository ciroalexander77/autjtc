Feature: GET ALIADOS

  Background:
     * url 'https://psop.qa-bam.com/extrafinancingtcv1/v1/extrafinancingtc'
     * def token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImtpZCI6IkNOdjBPSTNSd3FsSEZFVm5hb01Bc2hDSDJYRSJ9.eyJhdWQiOiIyMDY1OTdkYy01YjNkLTRkNWEtOWViZS0wYmQxYzAyNGQzMDMiLCJpc3MiOiJodHRwczovL2xvZ2luLm1pY3Jvc29mdG9ubGluZS5jb20vYjVlMjQ0YmQtYzQ5Mi00OTViLThiMTAtNjFiZmQ0NTNlNDIzL3YyLjAiLCJpYXQiOjE3NDM1NDU4NTksIm5iZiI6MTc0MzU0NTg1OSwiZXhwIjoxNzQzNTQ5NzU5LCJncm91cHMiOlsiZDM5NmQzMDQtNTA0Ny00ZTBkLWE5YTgtNTk3MDMwNzg0YmQ5IiwiM2ZiNjQxMGUtZTg3OS00NzkyLWIwYTEtYjBjOTllMTViNzYxIiwiZmRmZTdjMTgtYTIwOS00MWRkLThiMWYtN2Y4NWYwNDRiZWY2IiwiZWI2NjlmMWMtN2RmMS00MjdkLTgxNjYtOWE4NTMxYWI4YTRhIiwiOTczYzUxMjAtOWFkNy00ODgxLWFmYWQtOTlmYjFlNzBhYzIyIiwiNzBiMDk5MzctMGQ1Ny00MDFmLWJjNDgtMTg3MmNhMDExOTc0IiwiMWE2ZWRkM2YtMDg4OS00ZDc5LWFlODAtOGY3OTE2NTc2NWU1IiwiODkwM2ZkNDctYWY3MS00ZWFmLWFiYjQtMThkYWVjN2QzNDEzIiwiODE4OTVkNGMtNDBiZC00MDM5LWE1MDQtMjI0NzExNDIxYzc3IiwiMzEzNWExNTYtMzc2ZS00MmUyLTkxNjAtZWU3Y2NlOTA5ZTg2IiwiOGUzM2VkNWMtNjEwZS00YjViLWE0YjYtZDQ2MWU3M2IxNTJiIiwiYjBkMThlNmYtNWRlOS00NGJmLTljMmItYzdlMjg5MzhkNWJmIiwiMzAzMGUwNzUtMjAzNS00ZjNjLTk0MGMtY2E5NDRkNzM1MGRhIiwiZGYyMjA4NzgtYTJhYi00OGQ5LTgzMzItYTQxYWJlODRmNjU3IiwiZjhkMzBjNzktYTczOS00YzVmLWJkYjYtNDk2MzNjYzc4YjE3IiwiMDY5MTk0ODYtZWVmZi00MWVlLTgyZmMtZDg3OWJlYThmNmYxIiwiY2Y2MzZmOGMtMWNhZS00YTgwLTlhMjctMWE3MGY4ZDBjMzNlIiwiZjAyMWQ1OGMtMGJiNy00N2FhLTg1ZjgtMTZhNzJkMTg1ZmVkIiwiM2U3ZTFmOGUtNDM5OC00OGVjLTlmZmItMzQ2NmJhOTgwOGY2IiwiZmUwOTYyOTctMTAxYS00YjY4LTljZmMtMGMwYmM5MDAxMjlkIiwiZGVjMDg0OTctMjM4YS00ZTBlLWI3NjUtZjJiMzg2YjJmMDE5IiwiMDE1MmYwYTAtN2JkNC00ZTRhLTgwMjMtMmMwNzA4OTg1ZTgzIiwiYmQ5MmEyYTEtMWFmYi00NjAxLWFhNzEtODU5OWYyMjU0ODkwIiwiYjgzOWFjYTItNzdkMi00OTZmLTkwZGItNmE1ZWYwY2FjNGFjIiwiNDcwMTllYTMtNTU3OC00MmU3LTgwNDktZmFlZDQ0YzBlYTYxIiwiYmE4MmUzYTctNjY4OC00NDVmLTgyMmEtZjVmZTRjOTA4M2E0IiwiMDVjNTQyYmUtYjVkYy00ZjRjLTkzMWMtOWVmYWY1NTk4YzUzIiwiODQ5ZWRiYmYtODlmNS00NmNiLWJiNzctZTUwZmJmNzJjZTViIiwiNjc1ODFjYzMtMzA1OC00Y2NkLWFjYzYtNGU0NmY1NDhmNDQ0IiwiYTI2ZWNlY2ItN2ViMi00MGJkLTgwODMtYzgwOWRiZDhjMmIyIiwiYThiZmU5ZDEtYTgwNC00YmM0LTlmNGYtMDVkNDk4ZTUwNGQwIiwiNzQ2NjY2ZDctZTM1OS00YTAzLTg0OTYtNjU2NTIxMDE0NzI2IiwiYmNiMmQyZTEtMjU3YS00MjhiLWJjYjUtNTE5OWEzYmMzMjU3IiwiZTA1YzFkZTItY2MxZC00YTJhLTk4OWEtNmIwYjRiYTQxMGQxIiwiZTM5OTVlZjUtOTJhNS00NjliLTgzNGItMGNiMzc2OTdiYjBkIiwiMzUwZmRiZmQtYTI3ZC00MmUxLWI4MzAtOTViODA1NDk3MzRlIl0sIm5hbWUiOiJDaXJvIEFsZXhhbmRlciBDb3J0ZXMgVmFzcXVleiIsIm5vbmNlIjoiMDE5NWYzNzItZGE2YS03NzlmLWJiMWQtMDEyODA3NmRiNTY3Iiwib2lkIjoiYThiOTc1ZTctNmE3Zi00Yzc3LTg0YWYtYTRlMTJmNDllOTBlIiwicHJlZmVycmVkX3VzZXJuYW1lIjoiY2lyby5jb3J0ZXNAYmFtLmNvbS5ndCIsInJoIjoiMS5BUThBdlVUaXRaTEVXMG1MRUdHXzFGUGtJOXlYWlNBOVcxcE5ucjRMMGNBazB3TVBBRklQQUEuIiwic2lkIjoiMDAzZDM3ZjktN2U0ZS0wMGFjLTI0OTAtYTRjZDUyZjVkMTcxIiwic3ViIjoiMWVhcFgtbm13ZmM5aTVsc2FSZVg3R1A4SFNMZVVYWnZscDMwekpxeDYzdyIsInRpZCI6ImI1ZTI0NGJkLWM0OTItNDk1Yi04YjEwLTYxYmZkNDUzZTQyMyIsInV0aSI6IjlOWlEyS0lZbEVTbTd1WWxjYmtCQUEiLCJ2ZXIiOiIyLjAifQ.hHrhKqt1H52eipyOwQO-DQuOYX6YhCadEhtMEk3nTwfnucIxx5m4P8-hTV-8tOaBwebShtpPmJXZihzipYB3--_0OhjloVS9kYTKnjgwCHW5ej6owzBl_5tVrOvEL2bLxe95iKFBWcskrfFzsfcBHlsJAugEbbQ7sRHWdNmXeHhFt-SvHJ-srzXn_FC5kASylkZV5zULx1ycgC2SrmgEMKnaFyuVQ7gGdc8PI9zZOSC8vAi3YC5OhccsfJYwD-xbX5SyOxVw4RH2L4qi74dStGeBAn5vIunyWAT7jQrmANOlVb2gk4TC2B9r8rWdtxX5tKQihcM6bOSWTf3vinu97A'

  Scenario: Obtener todas las compañías aliadas
    Given path 'company/allieds'
    And header Authorization = 'Bearer ' + token
    And header Identifier = '67b37526-d7ab-48f1-98a6-ea940fc17e08'
    When method GET
    Then status 200
    And print response

  Scenario: Error 400 al Obtener todas las compañías aliadas
    Given path 'company/allieds'
    And header Authorization = 'Bearer ' + token
    And request { "Identifier": "67b37526-d7ab-48f1-98a6-ea940fc17e08" }
    When method GET
    Then status 400
    And print response

  Scenario: Obtener compañías aliadas con headers adicionales LIMIT y OFFSET
    Given path 'company/allieds'
    And header Authorization = 'Bearer ' + token
    And header Identifier = '67b37526-d7ab-48f1-98a6-ea940fc17e08'
    And header channel = '1'
    And param limit = 10
    And param offset = 0
    When method GET
    Then status 200
    And print response