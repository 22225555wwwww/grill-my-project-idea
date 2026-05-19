# Constraint Audit / 条件审计

## Project / 项目

- Idea / 想法：面向大学生的 AI agent workflow，帮助拷打项目想法
- Target user / 目标用户：会用 AI 编程工具的学生/新手开发者
- Core outcome / 核心结果：把模糊项目想法压缩成两周可验证 MVP

## User Constraints / 用户条件

| Area / 领域 | Current Reality / 当前现实 | Risk / 风险 | Downgrade / 降级方案 |
|---|---|---|---|
| Time / 时间 | 大学生，时间有限 | 项目范围过大导致烂尾 | 只做一个 workflow |
| Human+AI maintainability / 人+AI 可维护性 | 依赖 AI 编程，可写代码但长期调试维护能力有限 | 不适合重后端、爬虫、实时同步等高维护系统 | 纯 Markdown prompt repo |
| Money / 资金 | 无商业预算 | 不能依赖付费 API/服务器 | 不需要运行服务 |
| Data / 数据 | 不应依赖外部数据 | 爬虫/版权/维护风险 | 用户输入想法，agent 处理 |
| Permissions / 权限 | 无学校/平台权限 | 校园工具受限 | 面向通用学生开发者 |
| Users / 用户 | 可接触同学/开源学习者 | 受众窄 | 先服务 AI coding 用户 |
| Distribution / 分发 | GitHub | 纯 prompt 容易没人看 | README + 示例 + 模板 |
| Maintenance / 维护 | 愿意长期维护 | 双语同步成本 | 中文优先，英文跟进 |

## Biggest Contradiction / 最大矛盾

> 用户想要有 GitHub star 和真实使用，但人+AI可维护性与预算不适合做重数据/重后端项目。最佳路径是降低工程复杂度，把价值集中在高质量 workflow、模板和示例上。

## AI Help Boundary / AI 帮助边界

| Work / 工作 | AI Can Help / AI 能帮 | Human Must Own / 人必须负责 | MVP-Safe? / 适合 MVP? |
|---|---|---|---|
| Write workflow docs / 写 workflow 文档 | Draft structure, prompts, examples / 起草结构、prompt、示例 | Verify tone, usefulness, and realism / 验证语气、实用性、现实性 | Yes |
| Build crawler-heavy campus tool / 做重爬虫校园工具 | Generate scraper/backend code / 生成爬虫和后端代码 | Maintain data sources, legality, platform changes / 维护数据源、合法性、平台变化 | No |
| Create templates / 创建模板 | Draft reusable Markdown files / 生成可复用 Markdown | Test with real project ideas / 用真实项目想法测试 | Yes |

## Immediate Questions / 立即追问

1. workflow 是否能比普通 ChatGPT 提问更可靠？
2. 是否有足够好的示例证明价值？
3. 是否能让用户复制即用，而不是阅读长文档？
