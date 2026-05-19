# MVP Spec / MVP 规格

## One Core Path / 一个核心路径

A CS student preparing for internships pastes a project README, answers evidence questions, and gets 3 honest resume bullets plus 5 interview follow-up questions.

一个准备找实习的 CS 学生粘贴项目 README，回答证据问题，得到 3 条不夸大的简历 bullet 和 5 个面试追问。

## Must Build / 必须做

- Evidence-first prompt workflow
- Input template for project facts
- Claim verification checklist
- Resume bullet output format
- Interview follow-up questions
- Before/after example

## Not Now / 暂不做

- GitHub OAuth login
- Automatic repo crawling
- Full resume builder
- PDF export
- Web app
- Job matching

## Explicitly Won't Build / 明确不做

- Fake metrics generator
- Overclaiming achievements
- Private repo access
- Auto-apply system
- Interview answer fabrication

## Success Criteria / 成功标准

- User can run workflow inside existing AI coding/chat tool
- Output bullets cite evidence from user input
- Unsupported claims are flagged instead of polished
- User gets realistic interview questions from project details

## Failure Criteria / 失败标准

- Output invents metrics
- Output sounds impressive but cannot be defended
- Workflow does not ask evidence questions
- Scope expands into full SaaS

## First Issues / 首批任务

1. Draft evidence-first workflow
2. Add claim verification checklist
3. Create input facts template
4. Write before/after portfolio example
5. Add anti-overclaim rules
