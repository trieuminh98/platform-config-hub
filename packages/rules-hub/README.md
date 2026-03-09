# rules-hub

## Install a skill to repo-scope (CLI)

Example: install `react-best-practices` from `vercel-labs/agent-skills` into `.codex/skills`:

```bash
mkdir -p .codex/skills

python3 ~/.codex/skills/.system/skill-installer/scripts/install-skill-from-github.py \
  --repo vercel-labs/agent-skills \
  --path skills/react-best-practices \
  --dest .codex/skills
```

Then **restart Codex** to load the skill.

### Optional: rename the skill

```bash
python3 ~/.codex/skills/.system/skill-installer/scripts/install-skill-from-github.py \
  --repo vercel-labs/agent-skills \
  --path skills/react-best-practices \
  --dest .codex/skills \
  --name vercel-react-best-practices
```

### Verify install

```bash
ls .codex/skills
```
