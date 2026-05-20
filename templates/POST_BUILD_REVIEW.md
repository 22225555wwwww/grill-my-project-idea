# Post-Build Review / 实现后拷打

Use this after the MVP or tracer bullet exists.

在 MVP 或最短闭环做出来后使用。

## Built Version / 已实现版本

- Repo/demo / 仓库或演示：
- Core path implemented / 已实现核心路径：Yes / No
- What changed from MVP spec / 和 MVP 规格相比变了什么：

## Reality Check / 现实检查

| Check / 检查 | Result / 结果 | Evidence / 证据 | Fix / 修正 |
|---|---|---|---|
| Core path works / 核心路径可用 | Pass/Fail |  |  |
| Scope stayed small / 范围未膨胀 | Pass/Fail |  |  |
| User can understand it / 用户能理解 | Pass/Fail |  |  |
| Human can maintain it / 人能维护 | Pass/Fail |  |  |
| AI output is verified / AI 输出已验证 | Pass/Fail |  |  |
| Validation happened / 已真实验证 | Pass/Fail |  |  |

## Post-Build Coach Score / 实现后产品教练分

Score: [0-100]

This score decides whether the project deserves more investment. It is not just a code quality score.

这个分数用于判断项目是否值得继续投入，不只是代码质量分。

| Dimension / 维度 | Weight / 权重 | Score / 得分 | Evidence / 证据 |
|---|---:|---:|---|
| Core path works / 核心路径可用 | 20 |  |  |
| Scope discipline / 范围控制 | 15 |  |  |
| User understanding / 用户是否理解 | 15 |  |  |
| Evidence quality / 证据质量 | 20 |  |  |
| Maintainability / 可维护性 | 15 |  |  |
| Next decision clarity / 下一步清晰度 | 15 |  |  |

Score meaning / 分数含义：

- 85-100: Continue
- 70-84: Iterate
- 50-69: Downgrade / Simplify
- 0-49: Stop or Pivot

## Coach Summary / 产品教练总结

- Top strengths / 最大优势：
- Top risks / 最大风险：
- Recommended decision / 推荐决策：Continue / Iterate / Downgrade / Simplify / Stop / Pivot
- One concrete improvement / 一个具体改进：

## Feature Creep Audit / 功能回潮审计

List anything added that was not in `MVP_SPEC.md`.

列出所有不在 `MVP_SPEC.md` 里的新增内容。

| Added / 新增 | Why added / 为什么加 | Keep or remove / 保留或移除 |
|---|---|---|
|  |  |  |

If a new feature is useful but outside the current core path, do not silently keep it. Mark it as Backlog, Prototype Separately, or Remove.

如果新增功能有用但不属于当前核心路径，不要默认保留。标记为后续、单独验证或移除。

## User Evidence / 用户证据

- Test users / 测试用户：
- Observed behavior / 观察到的行为：
- Positive signal / 正向信号：
- Negative signal / 负向信号：

## Verdict / 判定

Continue / Iterate / Downgrade / Stop

## Next Action / 下一步

Only one:

- Fix core path
- Remove feature creep
- Run more validation
- Improve docs/onboarding
- Stop or pivot
