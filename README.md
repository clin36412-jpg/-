# 宿舍快乐中心

一个给洪艺嘉、牛蕾晴、鲍炎岐和班戟的宿舍纪念网页。

## 怎么打开

直接双击 `index.html`，或用浏览器打开这个文件。

## 现在有什么

- 舍友卡片、头像上传和快乐指数
- 考试结束倒计时
- 班戟借住倒计时
- 南京栖霞区天气提醒文案
- 课程速览和今日课程提示
- 王者荣耀随机安排
- 星座运势、默契测试、幸运舍友
- 宿舍回忆时间线
- 留言墙
- 宿舍数据导出和导入

## 三个人怎么共享修改

最简单的 GitHub 协作方式：

1. 在 GitHub 新建一个仓库，比如 `dorm-life-center`。
2. 把这个文件夹里的内容推送到仓库。
3. 在仓库 `Settings > Collaborators` 里邀请另外两个人。
4. 打开 `Settings > Pages`，选择 `Deploy from a branch`，分支选 `main`，目录选 `/root`。
5. GitHub 会生成一个网址，之后你们改 `index.html` 并提交，网页就会更新。

注意：当前版本是纯静态 HTML。网页里的留言、头像和回忆默认存在各自浏览器里；可以用“导出宿舍数据”和“导入宿舍数据”互相同步。要做到三个人实时同步留言，需要后续接 Supabase、Firebase 或其他数据库。

## 常用命令

```bash
git add .
git commit -m "Update dorm life center"
git push
```

