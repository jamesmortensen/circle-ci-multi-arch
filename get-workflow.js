curl --request GET \
  --url https://circleci.com/api/v2/workflow/$CIRCLE_WORKFLOW_ID/job \
  --header "Circle-Token: $(cat .secret)" > workflow.json
