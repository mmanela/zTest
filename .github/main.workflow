workflow "Create Feature in AzBoards" {
  on = "issues"
  resolves = ["Create Azure Boards Work Item"]
}

action "Create Azure Boards Work Item" {
  uses = "mmitrik/github-actions/boards@master"
  env = {
    AZURE_BOARDS_ORGANIZATION = "team"
    AZURE_BOARDS_PROJECT = "zTest"
    AZURE_BOARDS_TYPE = "USer Story"
  }
  secrets = ["AZURE_BOARDS_TOKEN"]
}
