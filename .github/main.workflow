workflow "Update work item comments in AzBoards" {
  on = "issue_comment"
  resolves = ["Create Azure Boards Work Item"]
}

workflow "Create work items in AzBoards" {
  on = "issues"
  resolves = ["Create Azure Boards Work Item"]
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
