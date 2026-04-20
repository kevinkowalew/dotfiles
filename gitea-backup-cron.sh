#!/usr/bin/env bash
if [ -z "$1" ]; then
  echo "You must provide a filepath to save your gitea backup"
  exit 1
fi

LOCAL_OUTPUT_DIR="$1"
POD_NAME=$(kubectl get pods -n prod | grep homelab-gitea | awk '{print($1)}' | head -n 1)
NAMESPACE="prod"
TIMESTAMP=$(date +%F-%H%M%S)
mkdir -p "$LOCAL_OUTPUT_DIR"
REMOTE_DATA_DIR="/var/lib/gitea"
echo "Starting Gitea backup from pod: $POD_NAME"
echo "📦 Running gitea dump inside pod..."
kubectl exec -n "$NAMESPACE" "$POD_NAME" -c gitea -- /bin/sh -c "gitea dump -c /data/gitea/conf/app.ini"
echo "🔍 Locating generated backup file..."
BACKUP_FILE=$(kubectl exec -n $NAMESPACE -c gitea $POD_NAME -- ls /var/lib/gitea | head -n 1)

if [[ -z "$BACKUP_FILE" ]]; then
	echo "❌ Failed to locate backup file in pod"
	exit 1
fi

echo "✅ Found backup: $BACKUP_FILE"

LOCAL_FILE="${LOCAL_OUTPUT_DIR}/gitea-backup-${TIMESTAMP}.zip"
echo "⬇️ Copying backup to local machine…"
kubectl cp "${NAMESPACE}/${POD_NAME}:${BACKUP_FILE}" "$LOCAL_FILE"
echo "✅ Backup copied to: $LOCAL_FILE"
echo "🧪 Verifying archive contents…"

if unzip -l "$LOCAL_FILE" | grep -q "gitea-db.sql"; then
	echo "✅ Archive looks valid"
else
	echo "⚠️ Archive may be incomplete (missing gitea-db.sql)"
fi

echo 🎉 Backup complete
