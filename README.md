# Grill My Project Idea / 拷打我的项目想法

**一个在写代码前拷打项目想法的通用 AI skill。**

**A portable AI skill for grilling project ideas before coding.**

复制到 ChatGPT、Claude、Cursor、Codex、Windsurf 或任意 AI 编程工具里使用。它用严格 workflow 检查用户、数据、范围、验证计划，以及“人 + AI”是否真的能验证、调试、维护。

Copy it into ChatGPT, Claude, Cursor, Codex, Windsurf, or any AI coding tool. It runs a strict workflow that challenges your users, data, scope, validation plan, and human+AI maintainability before you build.

Skill 是传播包装，workflow 是运行机制。它不是插件，不依赖特定平台，也不要求安装。

The skill is the reusable package; the workflow is how it runs. It is not a plugin, does not depend on a specific platform, and does not require installation.

## 30-Second Value / 30 秒价值

Bad AI / 糟糕 AI：

> 可以用 React + Node.js 爬虫 + 数据库做多平台比价，后续加 AI 推荐。

Grill / 拷打：

> 完整版本现在不适合做。问题不只是能不能写后端，而是你和 AI 能不能长期验证、调试、维护多平台爬虫、反爬、券后价和商品匹配。先降级：用户粘贴链接/截图/文本，工具只做购物决策表，不承诺全网最低价。

Full demo: [`demos/30-second-demo.md`](demos/30-second-demo.md)

## Quick Start / 快速开始

优先安装成 skill/rule，而不是每次复制粘贴。

Install it as a skill/rule first. Copy-paste prompts are the fallback.

### Codex Skill

```bash
mkdir -p ~/.codex/skills/grill-my-project-idea
cp adapters/codex/SKILL.md ~/.codex/skills/grill-my-project-idea/SKILL.md
```

Then ask Codex:

```text
Use grill-my-project-idea to grill this project idea:
[your idea]
```

### Claude Skill

Personal skill:

```bash
mkdir -p ~/.claude/skills/grill-my-project-idea
cp adapters/claude/SKILL.md ~/.claude/skills/grill-my-project-idea/SKILL.md
```

Project skill:

```bash
mkdir -p .claude/skills/grill-my-project-idea
cp adapters/claude/SKILL.md .claude/skills/grill-my-project-idea/SKILL.md
```

Then ask Claude:

```text
Use grill-my-project-idea to stress-test this idea before coding:
[your idea]
```

### Cursor Rule

```bash
mkdir -p .cursor/rules
cp adapters/cursor/grill-my-project-idea.mdc .cursor/rules/grill-my-project-idea.mdc
```

Then ask Cursor:

```text
Use the grill-my-project-idea rule before implementation:
[your idea]
```

### Copy-Paste Fallback / 复制粘贴备用

如果你的 AI 工具不支持 skill/rule，再复制短版 prompt：

- 中文：[`prompts/short-zh.md`](prompts/short-zh.md)
- English: [`prompts/short-en.md`](prompts/short-en.md)

完整 workflow（skill 的运行规则）：

- 中文：[`workflows/zh.md`](workflows/zh.md)
- English: [`workflows/en.md`](workflows/en.md)

## Core Rule / 核心规则

**先拷打条件，再评价想法。**

Before judging the idea, attack the constraints.

必须先问：

- 第一个用户是谁？能接触到吗？
- 数据从哪里来？是否合法、稳定、可维护？
- AI 能生成什么？人能验证、调试、维护什么？
- 没钱、没稳定数据、没用户、没 API 时还能不能做？
- 两周内能证明什么？失败标准是什么？

## Why Not Just ChatGPT? / 为什么不直接问 ChatGPT？

普通聊天容易顺着你走。这个 workflow 默认卡住你：

- 说不清第一个用户 → 不给技术栈
- 数据源不合法/不稳定 → 不给构建计划
- AI 能生成但人无法验证/维护 → 不进 MVP
- 只有夸奖没有行为证据 → 判定验证失败
- 功能太多 → 强制保留一个核心路径

Normal chat tends to follow your premise. This workflow blocks fantasy by default.

## Outputs / 输出物

这是完整 workflow 套件，但默认不要求一次填完所有模板。每个阶段只生成推动决策的必须产物，辅助产物只在风险复杂、证据不足或用户要求时展开。

Stage 1: Grill Idea / 拷打想法

- Required / 必须：`GATE_VERDICT.md`、`MVP_SPEC.md`、`VALIDATION_PLAN.md`
- Supporting / 辅助：`CONSTRAINT_AUDIT.md`、`ASSUMPTION_LEDGER.md`、`RISK_REGISTER.md`

Stage 2: Build Handoff / 实现交接

- Required / 必须：`BUILD_HANDOFF.md`，仅在 Gate 不是 Fail 且阻塞已处理后生成

Stage 3: Post-Build Review / 实现后拷打

- Required / 必须：`POST_BUILD_REVIEW.md`

模板：[`templates/`](templates/)

## Quality Gates / 质量门

进入构建计划前必须过 5 个门：

1. First user exists / 第一个用户存在
2. Constraint fit / 条件匹配
3. Data permission / 数据权限
4. One core path / 单核心路径
5. Two-week truth / 两周真相

Deep docs:

- [`docs/THREE_STAGE_FLOW.md`](docs/THREE_STAGE_FLOW.md)
- [`docs/QUALITY_GATES.md`](docs/QUALITY_GATES.md)
- [`docs/AI_HELP_BOUNDARY.md`](docs/AI_HELP_BOUNDARY.md)
- [`docs/EARLY_STAGE_FAILURE_MODES.md`](docs/EARLY_STAGE_FAILURE_MODES.md)

## Examples / 示例

- [`examples/bad-vs-good.md`](examples/bad-vs-good.md)：5 个“糟糕 AI 回答 vs 拷打回答”
- [`examples/campus-tool/`](examples/campus-tool/)：校园信息聚合想法如何降级
- [`examples/portfolio-tool/`](examples/portfolio-tool/)：AI 简历 SaaS 如何降级

## Repository Map / 仓库结构

- [`prompts/`](prompts/)：复制即用短 prompt
- [`workflows/`](workflows/)：完整 workflow
- [`templates/`](templates/)：输出模板
- [`docs/`](docs/)：三段式流程和深度规则
- [`examples/`](examples/)：案例

## License / 许可证

MIT. See [`LICENSE`](LICENSE).
