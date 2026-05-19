# Bad AI vs Grill Response / 糟糕 AI 回答 vs 拷打回答

这些例子展示本 workflow 的核心差异：不顺着用户幻想走，先质疑资源条件，再压缩 MVP。

These examples show the core difference: do not follow the user's fantasy. Challenge constraints first, then compress the idea into a realistic MVP.

## 1. Multi-Platform Price Tracker / 多平台比价工具

### User Idea / 用户想法

> 我想做一个多平台比价工具。用户输入商品类型，比如键盘，工具自动抓淘宝、京东、拼多多价格，统计最低价和推荐购买。

### Bad AI / 糟糕 AI

> 这个项目很实用。你可以用 React 做前端，Node.js 写爬虫，MongoDB 存价格，再加 AI 推荐和价格提醒。后续可以支持更多平台和用户登录。

### Grill Response / 拷打回答

完整版本现在不适合做。问题不只是能不能写后端，而是你和 AI 能不能长期验证、调试、维护多平台爬虫、反爬、登录态、券后价和商品匹配。任何平台改页面，项目就坏；价格错几次，用户就不信。

先回答 3 个问题：

1. 不自动爬平台，只让用户粘贴链接/截图/价格文本，项目还成立吗？
2. 你能接受 MVP 只做“购物决策表”，不承诺全网最低价吗？
3. 你本周能找到 5 个真实购买决策来测试吗？

### Realistic MVP / 现实 MVP

用户粘贴 2-5 个商品信息，工具生成对比表，计算单价、券后价、风险点和购买建议。不爬平台，不承诺最低价。

### Gate Verdict / 质量门判定

Conditional Pass：必须移除自动爬虫，改用用户提供数据。

---

## 2. AI Resume SaaS / AI 简历 SaaS

### User Idea / 用户想法

> 我想做一个 AI 简历生成器。用户输入 GitHub 链接，系统自动分析代码，生成简历 bullet、作品集页面和面试回答。

### Bad AI / 糟糕 AI

> 很适合找实习学生。你可以接 GitHub API，分析 repo，再用 AI 生成简历和作品集。可以加 OAuth 登录、PDF 导出和岗位匹配。

### Grill Response / 拷打回答

你描述的是 SaaS，不是早期学生项目。自动分析 repo 会遇到语言差异、monorepo、私有仓库、上下文不足和代码理解错误。更严重：AI 可能编造贡献和指标，用户面试时会翻车。

先回答 3 个问题：

1. 如果不接 GitHub，只让用户粘贴 README/项目描述，核心价值还在吗？
2. 每条简历 bullet 的证据从哪里来？没有证据能不能禁止输出？
3. 你想做“完整简历生成器”，还是只做“项目经历讲清楚”？

### Realistic MVP / 现实 MVP

学生粘贴项目 README，agent 追问证据，输出 3 条不夸大的简历 bullet 和 5 个面试追问。不接 OAuth，不自动分析私有仓库。

### Gate Verdict / 质量门判定

Conditional Pass：必须禁止无证据成就，先做项目经历表达，不做完整 SaaS。

---

## 3. Campus Social App / 校园社交 App

### User Idea / 用户想法

> 我想做一个校园社交 App，让学生按课程、兴趣、社团匹配朋友，还能发动态、组队、聊天。

### Bad AI / 糟糕 AI

> 这是一个很有潜力的校园社交产品。可以做用户系统、课程标签、推荐算法、聊天系统和动态流，后续扩展到多学校。

### Grill Response / 拷打回答

这个完整版本大概率死在冷启动和治理。社交产品不是功能问题，是网络效应问题。没人用就没有内容；人多了又有审核、骚扰、隐私和安全问题。你没有学校权限，也没有初始用户池。

先回答 3 个问题：

1. 你能在一个学校先拉到 30 个愿意真实发内容的人吗？
2. 没有聊天、动态、推荐算法，只做一个课程组队表，是否还有价值？
3. 出现骚扰、虚假信息、隐私泄露时谁处理？

### Realistic MVP / 现实 MVP

不做社交 App。先做“课程项目组队板”：学生填写课程、技能、可用时间、目标，生成公开匹配表或分享链接。无私聊、无动态、无推荐算法。

### Gate Verdict / 质量门判定

Fail for full app；Conditional Pass for single-course matching board. 最大阻塞是冷启动和治理。

---

## 4. AI Study Planner / AI 学习计划器

### User Idea / 用户想法

> 我想做一个 AI 学习计划器。学生输入考试时间和课程资料，AI 自动生成每天复习计划，还能监督学习状态。

### Bad AI / 糟糕 AI

> 很适合考试周。你可以上传资料，用 AI 总结重点，再生成日程和提醒。还可以加番茄钟、打卡、错题本和知识图谱。

### Grill Response / 拷打回答

这个想法容易变成“功能很多但没人坚持用”。最大问题不是计划生成，是用户是否会每天更新状态。AI 计划如果不根据执行情况调整，很快失效。

先回答 3 个问题：

1. 用户每天愿意花几秒更新进度？超过 30 秒会不会弃用？
2. 如果不上传资料，只输入考试日期、章节和掌握程度，MVP 是否成立？
3. 成功标准是“生成计划”，还是“用户连续 7 天执行”？

### Realistic MVP / 现实 MVP

考试周复习排程器：用户输入考试日期、章节数量、难度、每天可用时间，工具生成 7 天复习计划。每天只需点“完成/没完成”，自动重排。不上传资料，不做知识图谱。

### Gate Verdict / 质量门判定

Conditional Pass：必须把成功标准从“生成计划”改成“连续执行 7 天”。

---

## 5. Open-Source Learning Platform / 开源学习平台

### User Idea / 用户想法

> 我想做一个面向大学生的开源学习平台，聚合课程、笔记、项目、路线图、打卡社区和 AI 导师。

### Bad AI / 糟糕 AI

> 这是一个很有价值的平台型项目。可以先搭建课程模块、用户系统、社区、AI 问答和学习路线，后续邀请用户贡献内容。

### Grill Response / 拷打回答

这是平台幻想。课程、笔记、项目、社区、AI 导师，每个都是单独项目。你现在没有内容供给、审核机制、用户来源和维护团队。最危险的假设是“用户会贡献内容”。大多数人不会。

先回答 3 个问题：

1. 不做平台，只做一个具体学习任务，哪个任务最痛？
2. 第一批内容谁写？写多少？多久更新？
3. 没有社区、没有 AI、没有账号系统，是否还能产生价值？

### Realistic MVP / 现实 MVP

只做“CS 学生开源项目启动包”：一个 workflow 帮学生从想法生成 README、MVP、issues、风险表和两周计划。内容由项目维护者提供，不依赖用户贡献。

### Gate Verdict / 质量门判定

Fail for platform；Conditional Pass for one workflow/toolkit. 最大阻塞是内容供给和平台幻想。
