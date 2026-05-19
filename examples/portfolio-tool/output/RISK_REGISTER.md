# Risk Register / 风险登记表

| Risk / 风险 | Type / 类型 | Likelihood / 概率 | Impact / 影响 | Mitigation / 缓解 | Trigger / 触发信号 |
|---|---|---|---|---|---|
| Output invents achievements | User / 用户 | High | High | Require evidence for every claim | Bullet contains unsupported metric |
| Scope expands into SaaS | Technical / 技术 | Medium | High | Keep workflow-only MVP | OAuth/web app/server appears in plan |
| User input too shallow | User / 用户 | High | Medium | Ask follow-up evidence questions | README lacks impact/role details |
| Same as generic ChatGPT prompt | Distribution / 分发 | Medium | High | Add claim verification and interview-defense loop | Output is only polished wording |
| Privacy concerns | Data / 数据 | Medium | Medium | User controls pasted content; no login | User asks to connect private repo |

## Red Lines / 红线

- Do not build / 不做：automatic private repo analysis
- Do not assume / 不假设：metrics, impact, team role, production usage
- Stop if / 停止条件：workflow encourages fake achievements
