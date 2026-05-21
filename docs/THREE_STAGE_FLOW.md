# Three-Stage Flow / 三段式流程

This repo has three bounded stages. Do not merge them into one giant workflow.

这个仓库有三个有边界的阶段。不要把它们合成一个巨型 workflow。

## Stage 1: Grill Idea / 拷打想法

Goal: decide whether the idea deserves an MVP.

目标：判断想法是否值得进入 MVP。

Use:

- [`prompts/short-zh.md`](../prompts/short-zh.md)
- [`workflows/zh.md`](../workflows/zh.md)
- [`templates/GATE_VERDICT.md`](../templates/GATE_VERDICT.md)
- [`templates/MVP_SPEC.md`](../templates/MVP_SPEC.md)
- [`templates/VALIDATION_PLAN.md`](../templates/VALIDATION_PLAN.md)

Required outputs:

- Gate verdict
- MVP spec
- Validation plan

Supporting outputs, only when risk is complex, evidence is weak, or the user asks:

- [`templates/CONSTRAINT_AUDIT.md`](../templates/CONSTRAINT_AUDIT.md)
- [`templates/ASSUMPTION_LEDGER.md`](../templates/ASSUMPTION_LEDGER.md)
- [`templates/RISK_REGISTER.md`](../templates/RISK_REGISTER.md)

Exit only if:

- Gate Verdict is `Pass`, or
- Gate Verdict is `Conditional Pass` and blockers are resolved.

## Stage 2: Build Handoff + Execution / 实现交接 + 执行

Goal: freeze scope, then start the tracer-bullet implementation without re-opening fantasy.

目标：先冻结范围，再启动最短闭环实现，不重新打开幻想。

Use:

- [`templates/BUILD_HANDOFF.md`](../templates/BUILD_HANDOFF.md)
- [`prompts/build-zh.md`](../prompts/build-zh.md) or [`prompts/build-en.md`](../prompts/build-en.md) to start coding from the handoff

Rules:

- Start with tracer bullet, not full product.
- `BUILD_HANDOFF.md` freezes scope; `prompts/build-*.md` starts implementation.
- Build Mode writes code first, then self-reviews, scores implementation, and orders optimizations.
- Ask users only for product decisions, not routine engineering details.
- Do not add auth/database/AI API/realtime/mobile unless MVP explicitly requires it.
- Every issue must map to the core user path or acceptance criteria.
- If blocked, downgrade instead of expanding scope.

## Stage 3: Post-Build Review / 实现后拷打

Goal: check whether the built thing still matches the MVP and has real evidence.

目标：检查做出来的东西是否仍符合 MVP，是否有真实证据。

Use:

- [`templates/POST_BUILD_REVIEW.md`](../templates/POST_BUILD_REVIEW.md)

Ask:

- Did the core path work?
- Did scope creep happen?
- Did a real user try it?
- What evidence changed the plan?
- Should we continue, iterate, downgrade, or stop?

## Anti-Scope Rule / 防膨胀规则

If a stage starts solving problems from another stage, stop and write a handoff instead.

如果一个阶段开始解决另一个阶段的问题，停止，改写交接文档。
