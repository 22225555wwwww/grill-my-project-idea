# Early-Stage Failure Modes / 早期项目死亡原因

This project exists because early student projects usually fail before code quality matters.

这个项目存在的原因：学生项目通常还没到代码质量阶段就已经死了。

## 1. Fake User / 假用户

**Symptom / 症状**

- “College students will use it.”
- “Developers need this.”
- “Open-source users will like it.”
- “大学生都会需要。”
- “开发者应该会喜欢。”

**Why It Kills / 为什么致命**

A broad group is not a user. If the builder cannot name the first 5 reachable users, distribution is fantasy.

宽泛人群不是用户。如果做项目的人说不出前 5 个可接触用户，分发就是幻想。

**Required Challenge / 必须追问**

- Who are the first 5 users by name or reachable channel?
- What do they do today without your project?
- Why would they try yours this week?

## 2. Human+AI Maintainability Mismatch / 人+AI 可维护性错配

**Symptom / 症状**

- AI can generate backend code, but the project needs real-time sync, debugging, deployment, and abuse handling.
- AI can generate scrapers, but the project needs long-term anti-bot adaptation and data verification.
- AI can generate auth code, but the project needs security review, incident handling, and privacy decisions.
- AI 能生成后端代码，但项目需要实时同步、调试、部署和滥用处理。
- AI 能生成爬虫，但项目需要长期适配反爬和验证数据准确性。
- AI 能生成账号代码，但项目需要安全审查、事故处理和隐私决策。

**Why It Kills / 为什么致命**

AI coding can generate code, but it cannot remove debugging, deployment, abuse handling, data verification, and maintenance ownership.

AI 能生成代码，但不能消灭调试、部署、滥用处理、数据校验和维护责任。

**Required Challenge / 必须追问**

- Which parts can you and AI debug when production behavior differs from generated code?
- What breaks if AI-generated code fails in production?
- Can the MVP be local-first or static?

## 3. Data Fantasy / 数据幻想

**Symptom / 症状**

- “We can scrape it.”
- “Use public data.”
- “Users will provide data later.”
- “爬一下就行。”
- “用公开数据。”
- “以后用户会贡献数据。”

**Why It Kills / 为什么致命**

Data is not free just because it is visible. Scraping, copyright, login, anti-bot, schema drift, and stale data become maintenance debt.

看得见不代表能免费用。爬虫、版权、登录、反爬、字段变化、过期数据都会变成维护债。

**Required Challenge / 必须追问**

- Is the data legally and technically reusable?
- What is the no-scraping MVP?
- What happens when the source blocks you?

## 4. Feature Hoarding / 功能囤积

**Symptom / 症状**

- “It will have dashboard, AI, login, sharing, mobile app, notifications.”
- “先把功能都做了。”
- “功能越多越完整。”

**Why It Kills / 为什么致命**

More features delay the first truth: whether anyone cares.

更多功能会推迟最关键事实：到底有没有人在乎。

**Required Challenge / 必须追问**

- What single action creates value?
- What 70% can be cut?
- What would you ship in 7 days?

## 5. No Distribution / 没有分发

**Symptom / 症状**

- “I will post it on GitHub.”
- “Maybe people will star it.”
- “I can share it later.”
- “发 GitHub 就行。”

**Why It Kills / 为什么致命**

Publishing is not distribution. GitHub has no obligation to send users.

发布不是分发。GitHub 没义务给你用户。

**Required Challenge / 必须追问**

- Which communities will see it?
- What title or demo makes people click?
- What pain makes them share it?

## 6. Maintenance Blindness / 维护失明

**Symptom / 症状**

- “I will maintain long term.”
- “If it breaks, I’ll fix it.”
- “长期维护。”

**Why It Kills / 为什么致命**

Long-term intent is not a maintenance plan. Every external dependency is future work.

长期意愿不是维护计划。每个外部依赖都是未来工作。

**Required Challenge / 必须追问**

- What can break without code changes from you?
- What will you refuse to support?
- How many hours per month can you maintain?

## 7. AI Magic Thinking / AI 魔法思维

**Symptom / 症状**

- “AI will summarize/plan/match/decide.”
- “Use an agent to handle it.”
- “AI 会整理。”

**Why It Kills / 为什么致命**

AI output still needs input quality, evaluation, fallback, cost control, and user trust.

AI 输出仍需要输入质量、评估、失败兜底、成本控制、用户信任。

**Required Challenge / 必须追问**

- What happens when AI is wrong?
- How does the user verify output?
- Can the project still work with rules/templates only?
