---
name: hermes-automation-backups
description: Use when creating Hermes scheduled jobs, cron jobs, recurring automations, daily GitHub backups, VPS health checks, token/env setup for backup jobs, or scheduled maintenance for a Hermes Agent installation.
---

# Hermes Automations And Backups

Use this to make Hermes maintain itself on a schedule.

## Daily Backup Pattern

1. Create a private GitHub repository for Hermes backups.
2. Create a fine-grained GitHub token restricted to that repo.
3. Grant only required permissions, usually contents read/write.
4. Store the token through Hermes config/environment, not in files.
5. Configure Git identity for automated commits.
6. Clone or initialize the backup repo on the VPS.
7. Decide backup scope:
   - Skills, memory, markdown, config, and task state are usually enough.
   - Avoid backing up huge caches, node_modules, logs, model files, and secrets.
8. Schedule daily backup at a quiet hour in the relevant timezone.
9. Run the backup once immediately and verify the push on GitHub.

## Automation Ideas

- Daily Hermes backup.
- Weekly VPS health report: disk, RAM, service status, failed jobs.
- Daily stale skill report.
- Morning task digest to Discord.
- Nightly GitHub sync.
- Weekly memory contradiction review.

## Backup Checklist

- Repo is private.
- Token is repo-scoped.
- Secrets are excluded.
- Large files are excluded.
- First push verified.
- Restore process is documented.

## Failure Handling

If a backup fails:

- Check token location and environment loading.
- Check repo remote URL and auth method.
- Check file size limits.
- Check Git identity.
- Check cron/service logs.

## Source Notes

Distilled from the user-provided "seven levels of Hermes Agent" transcript, level 4.
