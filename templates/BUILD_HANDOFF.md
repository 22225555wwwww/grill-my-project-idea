# Build Handoff / 实现交接

Use this only after Gate Verdict is `Pass` or `Conditional Pass` with blockers resolved.

仅在质量门判定为 `Pass`，或 `Conditional Pass` 且阻塞已处理后使用。

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
