# devtools::install_github("awalker89/Rjira"). Thank you!
library(jira) # the name of the package is not Rjira !

options("jira_user" = "user_name") ## my username is admin
options("jira_password" = "password")
options("jira_url" = "yourJiraServer.com")
options("jira_project" = "PMDS")
options("jira_StreamType" = 'UTF-8')

issue <- create_issue()
issue$project_key <- "PMDS"
issue$issue_type <- "Bug"
issue$summary <- "TEST 666"
issue$description <- list("This look concerning.")

post_issue(issue) ## post the issue to JIRA 