# Build Handoff / 实现交接

Use this only after Gate Verdict is `Pass` or `Conditional Pass` with blockers resolved.

仅在质量门判定为 `Pass`，或 `Conditional Pass` 且阻塞已处理后使用。

This file is the input spec for Build Mode. It freezes scope; it does not execute implementation. To code, use [`prompts/build-zh.md`](../prompts/build-zh.md) or [`prompts/build-en.md`](../prompts/build-en.md).

本文件是 Build Mode 的输入规格。它负责冻结范围，不负责执行实现。真正写代码时，使用 [`prompts/build-zh.md`](../prompts/build-zh.md) 或 [`prompts/build-en.md`](../prompts/build-en.md)。


## Build Mode Boundary / Build Mode 边界

`BUILD_HANDOFF.md` defines what to build. Build Mode writes code, self-reviews implementation, scores it, and asks the user only for product decisions.

`BUILD_HANDOFF.md` 定义要构建什么。Build Mode 负责编写代码、自审实现、打分，并且只在产品决策上询问用户。

## Gate Status / 质量门状态

- Verdict / 判定：Pass / Conditional Pass
- Blockers resolved / 已解决阻塞：
- Still risky / 仍有风险：

## Goal / 目标

[One sentence. No vision statement.]

[一句话。不要写愿景。]

## Core User Path / 核心用户路径

A user in **[scenario]** has **[problem]**, performs **[one action]**, and gets **[one result]**.

用户在 **[场景]** 遇到 **[问题]**，执行 **[一个动作]**，得到 **[一个结果]**。

## Must Build / 必须做

- 
- 
- 

## Must Not Build / 禁止做

- 
- 
- 

## Constraints / 约束

- Time / 时间：
- Human+AI maintainability / 人+AI 可维护性：
- Budget / 预算：
- Data/permissions / 数据与权限：
- Deployment / 部署：

## Acceptance Criteria / 验收标准

- 
- 
- 

## First 5 Issues / 前 5 个任务

1. 
2. 
3. 
4. 
5. 

## Build Module Scores / 构建模块评分

Use this during implementation when reviewing modules, features, or issues. Scores are product-coach scores: they help decide keep, simplify, delay, or cut.

构建过程中审查模块、功能或任务时使用。评分是产品教练分，用于决定保留、简化、延后或砍掉。

| Module / 模块 | Core Path Fit 25 | User Value 20 | Simplicity 15 | Maintainability 15 | Validation Support 15 | Risk Control 10 | Total / 总分 | Decision / 决策 |
|---|---:|---:|---:|---:|---:|---:|---:|---|
|  |  |  |  |  |  |  |  | Keep/Simplify/Delay/Cut |

For every low score, provide a constructive alternative: simplify, strengthen core path, prototype separately, delay, or cut.

每个低分项都必须给替代方案：简化、强化核心路径、单独验证、延后或砍掉。

## Feature Opportunity Review / 功能机会审查

Use this when the user wants to add a new feature or side path. AI can suggest side paths, but cannot silently merge them into the current MVP.

当用户想新增功能或旁支路径时使用。AI 可以提出旁支机会，但不能悄悄把旁支机会塞进当前 MVP。

| Feature / 功能 | Core Path Boost 25 | User Evidence 20 | Low Cost 15 | Maintainability 15 | Validation Value 15 | Risk Control 10 | Total / 总分 | Decision / 决策 |
|---|---:|---:|---:|---:|---:|---:|---:|---|
|  |  |  |  |  |  |  |  | Adopt Now/Backlog/Prototype Separately/Reject |

Before adopting, answer:

采用前必须回答：

1. Does it serve the current core path? / 它服务当前核心路径吗？
2. Does it solve a real blocker for the current user? / 它解决当前用户的真实阻塞吗？
3. Does it introduce new users, scenarios, data, permissions, or maintenance load? / 它是否引入新用户、新场景、新数据、新权限或新维护负担？
4. Can it produce evidence in the current validation window? / 它能否在当前验证周期内产生证据？
5. Will it delay the approved MVP? / 它会不会让当前 MVP 延期？
6. Can the human+AI pair verify, debug, and maintain it? / 人+AI 能否验证、调试、维护它？

## Tracer Bullet / 最短闭环

The first implementation slice must prove the core path with the least code.

第一个实现切片必须用最少代码跑通核心路径。

- Input / 输入：
- Action / 动作：
- Output / 输出：
- How to test / 如何测试：

## Scope Guardrails / 范围护栏

Do not add unless explicitly required by MVP:

除非 MVP 明确需要，否则不加：

- Auth / 登录
- Database / 数据库
- Payment / 支付
- Realtime sync / 实时同步
- AI API / AI API
- Mobile app / 移动端
- Admin dashboard / 管理后台

## Downgrade Rules / 降级规则

If blocked by **[risk]**, downgrade to **[simpler path]**.

如果被 **[风险]** 卡住，降级到 **[更小路径]**。
