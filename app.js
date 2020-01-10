// http://star-crocus.glitch.me/cron-job にアクセスするとworking!を返す為だけのページ（監視用）

const express = require('express');

const app = express();

app.get('/cron-job', (_, res) => {
  res.send('working!');
});

app.listen(3000);