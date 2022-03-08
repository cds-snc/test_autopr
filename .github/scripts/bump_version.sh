  git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"

  echo "commiting the version bump changes..."
  pwd
  echo $NEW_VERSION > VERSION
  git add .
  git commit -m "Bump Version v${CURRENT_VERSION} -> ${NEW_VERSION}"
  echo "pushing the version bump changes..."
  git push origin main