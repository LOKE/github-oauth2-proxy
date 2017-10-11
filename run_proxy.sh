#!/bin/sh
/bin/oauth2_proxy \
   --email-domain="*"  \
   --http-address="0.0.0.0:4180" \
   --upstream=$UPSTREAM \
   --cookie-secret=$COOKIE_SECRET \
   --cookie-secure=true \
   --provider=github \
   -github-org="$GITHUB_ORG" \
   -github-team="$GITHUB_TEAM" \
   --client-id=$CLIENT_ID \
   --client-secret=$CLIENT_SECRET
