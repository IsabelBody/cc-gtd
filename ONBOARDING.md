# Onboarding

Run the guided command from Claude Code:

```text
/onboard
```

That command is the source of truth for first-run setup. It creates or checks the private
workspace, walks through identity anchors, project setup, calendar skeleton, first brain
dump, first processed actions, and the first daily plan.

## What You Are Building

This is not a normal todo list. It is a GTD operating loop:

```text
/restart -> /capture -> /daily -> todo.md -> /shutdown -> /weekly
```

- `journal/` is raw thinking.
- `inbox.md` is unprocessed capture.
- `projects/active/*/info.md` holds outcomes and status.
- `projects/active/*/tasks.md` holds next actions by context.
- `calendar.md` mirrors fixed commitments and recurring blocks.
- `todo.md` is only today's working list.
- `daily/` records plan, work log, and reflection.
- `weekly/` keeps the system honest.

## First-Run Short Version

```bash
just setup
```

Then in Claude Code:

```text
/onboard
```

MCP integrations are optional. Start with local markdown first; connect Todoist, Google
Calendar, or Slack once the basic loop works.

## Privacy

Personal files are intentionally ignored by git. After setup, `git status --ignored` should
show files like `identity.md`, `calendar.md`, `projects/`, `daily/`, `journal/`, and
`todo.md` as ignored.
