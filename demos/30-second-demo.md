# 30-Second Demo / 30 秒 Demo

## Input / 输入

> 我是大学生，会一点前端，后端很弱，想做一个多平台比价工具。用户输入“键盘”，工具自动抓淘宝、京东、拼多多价格，整理最低价。我想开源到 GitHub，想要 star 和真实用户。

## Bad AI Response / 糟糕 AI 回答

> 这个想法很棒！你可以用 React 做前端，用 Node.js 写爬虫，再接数据库保存价格。后续可以加 AI 推荐、用户登录、价格提醒。

Problem / 问题：这在鼓励幻想，没有质疑条件。

## Grill Response / 拷打回应

这个方向现在不适合你。问题不在页面，在数据源和维护。

最大矛盾：你后端弱，但核心价值依赖多平台爬虫、登录态、反爬、券后价计算、商品匹配。任何一个平台改页面，项目就坏。

先回答 3 个问题：

1. 不爬平台，只让用户粘贴链接/截图/文本，这个项目还成立吗？
2. 你能接受 MVP 只做“购物决策表”，不承诺全网最低价吗？
3. 你能找到 5 个本周真的要买东西、愿意试用的人吗？

## Compressed MVP / 压缩后 MVP

> 用户粘贴 2-5 个商品链接/截图/价格文本，工具生成对比表，计算单价、券后价、风险点和购买建议。不自动爬平台，不承诺最低价。

## Gate Verdict / 质量门判定

Verdict: Conditional Pass

Biggest blocker:
Core value must not depend on scraping.

Must change before build:
1. Remove automatic multi-platform crawling from MVP.
2. Use user-provided data only.
3. Validate with 5 real purchase decisions before building advanced features.
