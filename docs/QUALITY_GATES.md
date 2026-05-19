# Quality Gates / 质量门

Use these gates before allowing a project idea to move from discussion to build plan.

在允许项目从讨论进入构建计划前，必须过这些质量门。

## Gate 1: First User Exists / 第一个用户存在

Pass only if:

- Target user is specific.
- First 5 users are reachable.
- Current workaround is known.
- Pain is frequent or urgent.

Fail if:

- User group is “students”, “developers”, “everyone”.
- User discovery plan is “post on GitHub”.
- No current workaround is named.

## Gate 2: Constraint Fit / 条件匹配

Pass only if:

- MVP fits available weekly hours.
- Required complexity is verifiable, debuggable, deployable, and maintainable by the human+AI pair.
- Budget is enough for required services.
- Maintenance load is explicit.

Fail if:

- Human+AI pair cannot debug or maintain the proposed backend complexity.
- No-budget builder requires paid APIs.
- Solo student proposes multi-platform app.

## Gate 3: Data Permission / 数据权限

Pass only if:

- Data source is user-provided, owned, official API, or optional.
- No-scraping MVP exists.
- Privacy risk is understood.

Fail if:

- Core value depends on scraping protected platforms.
- Login credentials are needed.
- Copyright status is unclear.

## Gate 4: One Core Path / 单核心路径

Pass only if:

- One user path can be described in one sentence.
- MVP has 3 or fewer core actions.
- Non-core features are explicitly cut.

Fail if:

- MVP includes dashboard + auth + AI + sharing + mobile.
- “Nice to have” features remain in v1.

## Gate 5: Two-Week Truth / 两周真相

Pass only if:

- There is a validation result in 14 days.
- Failure criteria are explicit.
- User behavior, not compliments, is measured.
- The test uses a real target user, real context or materials, one core action, observable behavior, negative feedback, and a decision change.

Fail if:

- Plan is “build first, validate later”.
- Success metric is vague praise.
- No stop/pivot condition exists.
- Evidence is only friend praise, demo watching, likes, stars, or “I would use this if it had more features”.

Strong evidence:

- A target user brings their own real problem, data, or workflow.
- The user completes the core action without being led through every step.
- The user asks to use it again, recommends it to a similar user, waits for the next version, pays, or replaces part of their current workaround.

Weak evidence:

- Friends say it is interesting.
- Users watch a demo but do not try it on their own task.
- Feedback only asks for more features without confirming the core pain.

Success means the builder makes an evidence-based project decision: continue, cut, downgrade, delay, strengthen the core path, pivot, or stop. It does not mean always building more.

## Verdict Format / 判定格式

```text
Verdict: Pass / Conditional Pass / Fail

Biggest blocker:
[one sentence]

Must change before build:
1.
2.
3.

Smallest acceptable MVP:
[one core path]
```
