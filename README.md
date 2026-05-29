# lala land

一个给洪艺嘉、牛蕾晴、鲍炎岐和班戟的宿舍纪念网页。

## 怎么打开

直接双击 `index.html`，或用浏览器打开这个文件。

## 现在有什么

- 舍友卡片、头像上传和快乐指数
- 首页今日面板
- 考试结束倒计时
- 班戟借住倒计时
- 南京栖霞区天气提醒文案
- 牛蕾晴/洪艺嘉/鲍炎岐课表筛选、下一节课和教室复制
- 王者荣耀随机安排
- 星座运势
- 今日心情签到
- 奶茶外卖投票，记录谁投了什么
- 王者开黑房间在线状态
- 今晚吃什么抽签，内置 30 个候选但不展开显示
- 班戟营业状态
- 班戟日历
- 一周心情签到历史
- 个人资料填写
- 班戟照片墙
- 照片墙分类和点开放大
- Chiikawa 小角落
- 宿舍回忆时间线
- 留言墙点赞和置顶
- 手机端底部快捷导航
- 宿舍数据导出和导入
- 可选 Supabase 云端同步，三个人打开同一个网址可以看到同一份留言和回忆

## 三个人怎么共享修改

最简单的 GitHub 协作方式：

1. 在 GitHub 新建一个仓库，比如 `dorm-life-center`。
2. 把这个文件夹里的内容推送到仓库。
3. 在仓库 `Settings > Collaborators` 里邀请另外两个人。
4. 打开 `Settings > Pages`，选择 `Deploy from a branch`，分支选 `main`，目录选 `/root`。
5. GitHub 会生成一个网址，之后你们改 `index.html` 并提交，网页就会更新。

## 三个人一起用同一个网站

GitHub Pages 只能托管网页，不能自己保存三个人共同的数据。要让三个人互相看到留言、回忆、头像和快乐指数，需要再接一个云端数据库。当前版本已经预留了 Supabase 同步。

### Supabase 设置

1. 打开 Supabase，新建一个 project。
2. 进入 `SQL Editor`，把 `supabase-schema.sql` 里的内容复制进去运行。
3. 进入 `Database > Replication`，把 `dorm_state` 加到 Realtime。
4. 进入 `Project Settings > API`，复制 `Project URL` 和 `publishable anon key`。
5. 打开 `index.html`，填入这两行：

```js
const SUPABASE_URL = '你的 Project URL';
const SUPABASE_PUBLISHABLE_KEY = '你的 publishable anon key';
```

6. 提交并推送到 GitHub。

完成后，页面底部会显示“云端同步已开启”。三个人打开同一个 GitHub Pages 链接，留言墙、回忆时间线、头像和快乐指数会使用同一份云端数据。

注意：这个版本是宿舍内部小网页，写入权限是公开的。不要把链接发到公开平台，也不要在里面放隐私内容。后续如果要更安全，可以加登录或邀请码。

## 常用命令

```bash
git add .
git commit -m "Update dorm life center"
git push
```
