JOBID=$1
ARTIF_ARCH=$2
curl --request GET \
              --url https://circleci.com/api/v2/project/gh/$ORG/$REPO/$JOBID/artifacts \
              --header "Circle-Token: $CIRCLE_TOKEN" > artifact-$ARTIF_ARCH.json
