# AI Help Boundary / AI 帮助边界

AI can reduce implementation cost. It cannot take real-world responsibility.

AI 可以降低实现成本，但不能替用户承担现实责任。

Use this boundary before approving any MVP plan.

在批准任何 MVP 计划前，先检查这个边界。

## AI Can Help / AI 能帮忙

| Area / 领域 | AI Can Help / AI 能做 | Still Needs Human Check / 仍需人检查 |
|---|---|---|
| Prototype / 原型 | Generate code, UI, scripts, configs / 生成代码、UI、脚本、配置 | Does it run? Does it match the user path? / 能不能跑？是否符合核心路径？ |
| Planning / 规划 | Break tasks, write issues, create milestones / 拆任务、写 issues、做里程碑 | Is scope realistic for available time? / 范围是否符合可用时间？ |
| Docs / 文档 | Write README, templates, examples / 写 README、模板、示例 | Is it truthful and usable? / 是否真实、可用？ |
| Testing / 测试 | Draft tests, test cases, edge cases / 写测试初稿、测试用例、边界情况 | Do tests cover real user behavior? / 是否覆盖真实用户行为？ |
| Debugging / 调试 | Explain logs, suggest fixes, inspect errors / 分析日志、建议修复、检查错误 | Can the human reproduce and verify the fix? / 人能否复现并验证修复？ |
| Refactoring / 重构 | Simplify small modules, rename, reorganize / 简化小模块、改名、整理结构 | Did behavior stay the same? / 行为是否保持一致？ |
| Feedback / 反馈 | Summarize user feedback, extract patterns / 总结反馈、提取模式 | Are users real and representative? / 用户是否真实且有代表性？ |
| Alternatives / 替代方案 | Suggest simpler MVPs, local-first paths / 提出更小 MVP、本地优先方案 | Does the downgrade preserve core value? / 降级后是否保留核心价值？ |

## Human Must Own / 人必须负责

| Responsibility / 责任 | Why AI Cannot Own It / 为什么 AI 不能负责 | Required Human Action / 必须人工行动 |
|---|---|---|
| First users / 第一批用户 | AI cannot create real demand / AI 不能创造真实需求 | Name and contact reachable users / 说出并联系可接触用户 |
| User interviews / 用户访谈 | AI cannot observe real behavior alone / AI 不能单独观察真实行为 | Talk to users, watch behavior / 访谈用户，观察行为 |
| Data accuracy / 数据准确性 | AI may parse or infer incorrectly / AI 可能解析或推断错误 | Verify data against source / 对照来源验证数据 |
| Legal/platform risk / 法律与平台风险 | AI is not legal authority / AI 不是法律权威 | Check terms, avoid risky sources / 检查规则，避开高风险来源 |
| External API/scraper changes / 外部 API/爬虫变化 | AI cannot guarantee sources stay stable / AI 不能保证数据源稳定 | Monitor, repair, or remove dependency / 监控、修复或移除依赖 |
| Product tradeoffs / 产品取舍 | AI lacks ownership of goals and consequences / AI 不承担目标和后果 | Choose what to cut / 决定砍什么 |
| Deployment/monitoring / 部署与监控 | AI does not operate the live system / AI 不运营线上系统 | Deploy, monitor, rollback / 部署、监控、回滚 |
| Abuse/privacy / 滥用与隐私 | AI cannot take responsibility for harm / AI 不能承担伤害责任 | Define boundaries, handle incidents / 定边界，处理事故 |
| Trust / 信任 | Users blame the project, not the model / 用户怪项目，不怪模型 | Verify claims before shipping / 发布前核验声明 |
| Maintenance / 维护 | AI does not commit future time / AI 不承诺未来时间 | Budget monthly maintenance hours / 预留每月维护时间 |

## Boundary Questions / 边界问题

Ask before moving to build plan:

进入构建计划前必须问：

1. Which parts can AI generate, and which parts must the human verify?
2. If AI output is wrong, how will the user detect it?
3. If external data/API/platform changes, who fixes it?
4. If the project harms trust, privacy, or accuracy, who responds?
5. Can the MVP avoid the parts that require long-term human ownership?

中文：

1. 哪些部分 AI 能生成？哪些部分必须由人验证？
2. 如果 AI 输出错了，用户怎么发现？
3. 如果外部数据/API/平台变化，谁修？
4. 如果项目伤害信任、隐私或准确性，谁处理？
5. MVP 能不能避开需要长期人工负责的部分？

## Verdict Rule / 判定规则

If AI can generate the feature but the human cannot verify or maintain it, the feature is not MVP-safe.

如果 AI 能生成某功能，但人无法验证或维护，这个功能就不适合进入 MVP。
