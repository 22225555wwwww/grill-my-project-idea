# Build Mode English

Copy the block below into your AI coding tool to start implementation from `BUILD_HANDOFF.md`.

```text
Use Build Mode.

Goal: code first. Implement the tracer bullet from BUILD_HANDOFF.md, then self-review the code, score it, and produce an optimization order. Do not re-grill the project idea. Do not expand scope.

Read first:
- BUILD_HANDOFF.md
- MVP_SPEC.md if present
- README.md only for project entrypoint context

Execution rules:
1. If BUILD_HANDOFF.md is missing or lacks Goal, Core User Path, Must Build, or Acceptance Criteria, stop and ask for the missing handoff. Do not write code.
2. If the handoff is clear enough, implement the Tracer Bullet directly: the smallest slice that proves the core user path.
3. Build only Must Build; do not build Must Not Build.
4. Do not add auth, database, AI API, realtime sync, mobile app, or admin dashboard unless explicitly required by the handoff.
5. Decide routine engineering details yourself; do not interrupt the user for variable names, minor file structure choices, or normal bug fixes.
6. Ask the user only for product decisions: changing the core path, adding a dependency, accepting a downgrade, keeping/cutting a feature, or delaying validation.
7. If blocked, use Downgrade Rules. Do not expand scope.

After coding, self-review:
- Does the core path work?
- Did implementation exceed the handoff?
- Did it introduce hard-to-maintain dependencies?
- Are there obvious edge-case failures?
- Was the smallest useful validation run?

Implementation Score / 100:
- Core Path Works 30
- Scope Discipline 20
- Simplicity 15
- Maintainability 15
- Validation 15
- User Decision Needed 5

Optimization order:
- P0: blocks core path
- P1: blocks validation
- P2: maintainability/simplification
- P3: UX/polish
- Backlog: outside current MVP

Final output:
- Implemented: what changed
- Files Changed: file list
- Validation: what was run
- Implementation Score: score and deductions
- Optimization Order: P0/P1/P2/P3/Backlog
- User Decisions Needed: decisions needed, or None
- Scope Guard: confirm no handoff scope was exceeded
- Next Small Step: exactly one next step

Start now: read BUILD_HANDOFF.md and implement the Tracer Bullet.
```
