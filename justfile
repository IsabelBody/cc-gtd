setup:
    @mkdir -p daily/ journal/ projects/active projects/archived reviews/ weekly/
    @[ -e inbox.md ] || cp templates/inbox.md inbox.md
    @[ -e projects.md ] || cp templates/projects.md projects.md
    @[ -e waiting-for.md ] || cp templates/waiting-for.md waiting-for.md
    @[ -e someday-maybe.md ] || cp templates/someday-maybe.md someday-maybe.md
    @[ -e calendar.md ] || cp templates/calendar.md calendar.md
    @[ -e identity.md ] || cp templates/identity.md identity.md

add-project project:
    @mkdir -p projects/active/{{project}}
    @[ -e projects/active/{{project}}/info.md ] || cp templates/project-info.md projects/active/{{project}}/info.md
    @[ -e projects/active/{{project}}/tasks.md ] || cp templates/project-tasks.md projects/active/{{project}}/tasks.md

onboard:
    @echo "1. Run: just setup"
    @echo "2. In Claude Code, run: /onboard"
    @echo "3. Use ONBOARDING.md as the written reference"
