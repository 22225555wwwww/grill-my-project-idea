# Grill My Project Idea / 拷打我的项目想法

> **A portable AI product-coach skill for scoring, grilling, and improving projects before, during, and after coding.**<br>
> **一个在写代码前、构建中、实现后对项目进行评分、拷打和改进的通用 AI 产品教练 skill。**

Use it in Codex, Claude, Kimi Code, Cursor, ChatGPT, Windsurf, or any AI coding tool to score an idea, review build modules, judge feature opportunities, and run post-build review. It checks users, data, scope, validation, and whether the **human + AI pair** can actually verify, debug, maintain, and own the project.

把它放进 Codex、Claude、Kimi Code、Cursor、ChatGPT、Windsurf 或任意 AI 编程工具里，对 idea 打分、审查构建模块、判断新增功能机会，并在实现后复盘。它检查用户、数据、范围、验证计划，以及 **人 + AI** 是否真的能验证、调试、维护和负责。

**Skill = reusable package. Workflow = how it runs.**<br>
**Skill 是可复用包装，workflow 是运行机制。**

---

## Install / 安装

Install it once as a skill/rule. Copy-paste prompts are only the fallback.

优先安装成 skill/rule；复制粘贴只是备用方案。

### One-Line Install / 一键安装

```bash
git clone https://github.com/22225555wwwww/grill-my-project-idea.git
cd grill-my-project-idea
./scripts/install.sh codex   # or: claude, kimi, cursor, all
```

Targets:

| Target | Installs to |
|---|---|
| `codex` | `~/.codex/skills/grill-my-project-idea/SKILL.md` |
| `claude` | `~/.claude/skills/grill-my-project-idea/SKILL.md` |
| `claude-project` | `./.claude/skills/grill-my-project-idea/SKILL.md` |
| `kimi` | `~/.kimi/skills/grill-my-project-idea/SKILL.md` |
| `kimi-project` | `./.kimi/skills/grill-my-project-idea/SKILL.md` |
| `cursor` | `./.cursor/rules/grill-my-project-idea.mdc` |
| `all` | Codex + Claude personal + Kimi personal + Cursor project rule |

### Use / 调用

Codex:

```text
Use grill-my-project-idea to grill this project idea:
[your idea]
```

Claude:

```text
Use grill-my-project-idea to stress-test this idea before coding:
[your idea]
```

Kimi Code:

```text
Use grill-my-project-idea to grill this project idea before coding:
[your idea]
```

Cursor:

```text
Use the grill-my-project-idea rule before implementation:
[your idea]
```

### Manual Install / 手动安装

If you do not want to run the script, copy files manually:

- Codex: copy [`adapters/codex/SKILL.md`](adapters/codex/SKILL.md) to `~/.codex/skills/grill-my-project-idea/SKILL.md`
- Claude: copy [`adapters/claude/SKILL.md`](adapters/claude/SKILL.md) to `~/.claude/skills/grill-my-project-idea/SKILL.md`
- Kimi Code: copy [`adapters/kimi/SKILL.md`](adapters/kimi/SKILL.md) to `~/.kimi/skills/grill-my-project-idea/SKILL.md`
- Cursor: copy [`adapters/cursor/grill-my-project-idea.mdc`](adapters/cursor/grill-my-project-idea.mdc) to `.cursor/rules/grill-my-project-idea.mdc`

### Copy-Paste Fallback / 复制粘贴备用

If your tool does not support skills/rules:

- 中文短版：[`prompts/short-zh.md`](prompts/short-zh.md)
- English short prompt: [`prompts/short-en.md`](prompts/short-en.md)
- 从 handoff 开始写代码：[`prompts/build-zh.md`](prompts/build-zh.md)
- Build from handoff: [`prompts/build-en.md`](prompts/build-en.md)
- 中文完整 workflow：[`workflows/zh.md`](workflows/zh.md)
- English full workflow: [`workflows/en.md`](workflows/en.md)

---

## 30-Second Value / 30 秒价值

**Bad AI / 糟糕 AI**

> 可以用 React + Node.js 爬虫 + 数据库做多平台比价，后续加 AI 推荐。

**Grill / 拷打**

> 完整版本现在不适合做。问题不只是能不能写后端，而是你和 AI 能不能长期验证、调试、维护多平台爬虫、反爬、券后价和商品匹配。先降级：用户粘贴链接/截图/文本，工具只做购物决策表，不承诺全网最低价。

Full demo: [`demos/30-second-demo.md`](demos/30-second-demo.md)

---

## Core Rule / 核心规则

**先拷打条件，再评价想法。**<br>
**Before judging the idea, attack the constraints.**

**No criticism without a constructive alternative.**<br>
**没有替代方案的批评不合格。**

Ask first / 必须先问：

- Who is the first reachable user? / 第一个可接触用户是谁？
- Where does the data come from? Is it legal and stable? / 数据从哪里来？是否合法、稳定？
- What can AI generate, and what can the human verify/debug/maintain? / AI 能生成什么？人能验证、调试、维护什么？
- Can it work without money, stable APIs, scraping, or existing users? / 没钱、没稳定 API、没爬虫、没用户时还能不能做？
- What can be proven in two weeks? What would count as failure? / 两周内能证明什么？失败标准是什么？

---

## Why This Exists / 为什么需要它

Normal AI chat often follows your premise. This skill blocks fantasy by default.

普通 AI 聊天容易顺着你走。这个 skill 默认卡住幻想项目。

- No reachable first user → no tech stack
- Risky or unstable data → no build plan
- AI can generate it but the human cannot verify/maintain it → not MVP-safe
- Praise without behavior evidence → validation failed
- Too many features → force one core path
- New side path → score it before adding it

---

## Coach Scores / 产品教练分

Scores are decision-readiness scores, not project-worth scores. High score does not mean build everything. Low score does not mean the idea is worthless.

评分是决策准备度，不是项目价值总分。高分不代表全做，低分不代表想法没价值。

| Moment | Score | Decision |
|---|---|---|
| Before build | Idea Coach Score | Strong Pass / Conditional Pass / Risky / Fail for Now |
| During build | Build Module Score | Keep / Simplify / Delay / Cut |
| Adding features | Feature Opportunity Score | Adopt Now / Backlog / Prototype Separately / Reject |
| After build | Post-Build Coach Score | Continue / Iterate / Downgrade / Simplify / Stop / Pivot |

---

## Workflow Outputs / 输出物

This is a complete workflow suite, but not every template is required by default.

这是完整 workflow 套件，但默认不要求一次填完所有模板。

| Stage | Goal | Required outputs | Supporting outputs |
|---|---|---|---|
| Stage 1: Grill Idea | Decide whether the idea deserves an MVP | `GATE_VERDICT.md`, `MVP_SPEC.md`, `VALIDATION_PLAN.md` | `CONSTRAINT_AUDIT.md`, `ASSUMPTION_LEDGER.md`, `RISK_REGISTER.md` |
| Stage 2: Build Mode | Freeze scope, implement tracer bullet, self-review and score | `BUILD_HANDOFF.md`, then `prompts/build-*.md` | Only if Gate is not `Fail` and blockers are resolved |
| Stage 3: Post-Build Review | Check whether the built thing has evidence | `POST_BUILD_REVIEW.md` | Use after MVP/tracer bullet exists |

Templates: [`templates/`](templates/)

---

## Quality Gates / 质量门

Before any build plan, the idea must pass five gates:

进入构建计划前必须过 5 个门：

1. **First user exists / 第一个用户存在**
2. **Constraint fit / 条件匹配**
3. **Data permission / 数据权限**
4. **One core path / 单核心路径**
5. **Two-week truth / 两周真相**

Deep docs:

- [`docs/THREE_STAGE_FLOW.md`](docs/THREE_STAGE_FLOW.md)
- [`docs/QUALITY_GATES.md`](docs/QUALITY_GATES.md)
- [`docs/AI_HELP_BOUNDARY.md`](docs/AI_HELP_BOUNDARY.md)
- [`docs/EARLY_STAGE_FAILURE_MODES.md`](docs/EARLY_STAGE_FAILURE_MODES.md)

---

## Examples / 示例

- [`examples/bad-vs-good.md`](examples/bad-vs-good.md): 5 bad AI answers vs grill answers
- [`examples/campus-tool/`](examples/campus-tool/): downgrade a campus aggregation idea
- [`examples/portfolio-tool/`](examples/portfolio-tool/): downgrade an AI resume SaaS idea

---

## Repository Map / 仓库结构

- [`adapters/`](adapters/): Codex, Claude, Kimi Code, and Cursor skill/rule adapters
- [`prompts/`](prompts/): copy-paste fallback prompts
- [`workflows/`](workflows/): full workflow rules
- [`templates/`](templates/): output templates
- [`docs/`](docs/): deeper rules and failure modes
- [`examples/`](examples/): examples and case studies

## License / 许可证

MIT. See [`LICENSE`](LICENSE).
