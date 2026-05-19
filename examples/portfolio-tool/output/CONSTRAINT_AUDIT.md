# Constraint Audit / 条件审计

## Project / 项目

- Idea / 想法：AI 简历和作品集生成器
- Target user / 目标用户：找实习的 CS 学生
- Core outcome / 核心结果：把项目经历转成有证据的简历 bullet 和面试准备材料

## User Constraints / 用户条件

| Area / 领域 | Current Reality / 当前现实 | Risk / 风险 | Downgrade / 降级方案 |
|---|---|---|---|
| Time / 时间 | 学生项目，维护时间有限 | 完整 SaaS 做不完 | 只做 workflow 和模板 |
| Human+AI maintainability / 人+AI 可维护性 | 依赖 AI 编程，可写原型但难长期维护复杂解析系统 | 自动 repo 分析跨语言、跨结构、易误判 | 用户粘贴 README/项目描述 |
| Money / 资金 | 无预算 | AI API/托管成本 | 用户自带 AI 工具运行 workflow |
| Data / 数据 | GitHub repo 格式不统一 | 分析错误、上下文不足 | 只分析用户提供文本 |
| Permissions / 权限 | 无私有仓库权限 | 账号安全风险 | 不登录、不接 OAuth |
| Users / 用户 | 找实习学生可接触 | 需求真实但竞品多 | 聚焦“证据化表达” |
| Distribution / 分发 | GitHub、学生社群 | 普通 prompt 太多 | 示例输出 + 反夸大规则 |
| Maintenance / 维护 | 长期但低成本 | 平台变化影响少 | Markdown-first |

## Biggest Contradiction / 最大矛盾

> 原始想法想自动分析 GitHub repo 并生成完整简历，但用户+AI组合很难长期维护复杂 repo 解析系统且无预算。最大风险是把项目做成复杂 SaaS。更现实的 MVP 是 evidence-first workflow：让用户提供文本，agent 追问证据，再生成不夸大的项目表达。

## AI Help Boundary / AI 帮助边界

| Work / 工作 | AI Can Help / AI 能帮 | Human Must Own / 人必须负责 | MVP-Safe? / 适合 MVP? |
|---|---|---|---|
| Generate resume bullets / 生成简历 bullet | Draft wording and alternatives / 起草表达和替代版本 | Verify every claim with evidence / 用证据核验每个声明 | Yes |
| Auto-analyze GitHub repo / 自动分析 GitHub repo | Generate parsers and summaries / 生成解析和摘要 | Handle repo diversity, private data, hallucinated claims / 处理仓库差异、私有数据、幻觉声明 | No |
| Generate interview questions / 生成面试追问 | Create likely questions / 生成可能追问 | Check whether user can defend answers / 确认用户能否解释答案 | Yes |

## Immediate Questions / 立即追问

1. 用户愿意粘贴多少项目材料？
2. “不夸大”的判断标准怎么写进 workflow？
3. 输出是中文简历、英文简历，还是中英双语？
