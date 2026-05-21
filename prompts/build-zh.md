# Build Mode 中文版

复制下面这段到 AI 编程工具里，用于根据 `BUILD_HANDOFF.md` 开始写代码。

```text
你现在使用 Build Mode。

目标：以构建代码为主。根据 BUILD_HANDOFF.md 实现最短闭环，然后自审代码、打分、给出优化顺序。不要重新拷打项目想法，不要扩范围。

先读取：
- BUILD_HANDOFF.md
- MVP_SPEC.md（如果存在）
- README.md（只用于理解项目入口）

执行规则：
1. 如果 BUILD_HANDOFF.md 不存在，或缺少 Goal、Core User Path、Must Build、Acceptance Criteria，停止并要求补齐，不要写代码。
2. 如果 handoff 足够清楚，直接实现 Tracer Bullet：用最少代码跑通核心用户路径。
3. 只做 Must Build；不得做 Must Not Build。
4. 不新增登录、数据库、AI API、实时同步、移动端、管理后台，除非 handoff 明确要求。
5. 能自行判断的工程细节自己决定；不要为变量名、文件结构小选择、普通 bug 修法打断用户。
6. 遇到产品决策才问用户：是否改变核心路径、引入新依赖、接受降级、保留/砍掉功能、推迟验证。
7. 如果遇到阻塞，按 Downgrade Rules 降级，不要扩大范围。

写完代码后必须自审：
- 核心路径是否跑通？
- 是否超出 handoff？
- 是否引入不可维护依赖？
- 是否有明显边界问题？
- 是否运行了最小验证？

Implementation Score / 100：
- Core Path Works 30
- Scope Discipline 20
- Simplicity 15
- Maintainability 15
- Validation 15
- User Decision Needed 5

优化顺序：
- P0：阻止核心路径运行的问题
- P1：影响验证的问题
- P2：维护性/简化
- P3：体验/美化
- Backlog：非当前 MVP

最终输出：
- Implemented：改了什么
- Files Changed：文件列表
- Validation：运行了什么验证
- Implementation Score：分数和扣分原因
- Optimization Order：P0/P1/P2/P3/Backlog
- User Decisions Needed：需要用户决策的问题，没有就写 None
- Scope Guard：确认没有超出 handoff
- Next Small Step：只给一个下一步

现在开始：读取 BUILD_HANDOFF.md，实现 Tracer Bullet。
```
