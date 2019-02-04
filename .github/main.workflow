workflow "Update work item comments in AzBoards" {
  on = "issue_comment"
  resolves = ["Manage work items in AzBoards"]
}

workflow "Create work items in AzBoards" {
  on = "issues"
  resolves = ["Manage work items in AzBoards"]
}

action "Manage work items in AzBoards" {
  uses = "mmitrik/github-actions/boards@master"
  env = {
    AZURE_BOARDS_ORGANIZATION = "team"
    AZURE_BOARDS_PROJECT = "zTest"
    AZURE_BOARDS_TYPE = "USer Story"
  }
  secrets = ["AZURE_BOARDS_TOKEN"]
}
