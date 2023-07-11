#!/bin/bash
cd client && npm start &
cd ../server/monolith && npm run launch & npm start & ngrok start --all &
cd ../router &&APOLLO_KEY=service:monolithodysseyvoyage-786pu: APOLLO_GRAPH_REF=monolithodysseyvoyage-786pu@main ./router --config ./config.yaml &

