import express from 'express';

const app = express();

app.get('/', (req, res) => {
  res.send('Coucou, je suis un serveur nodejs/express');
})


app.listen(3000, () => {
  console.log('Serveur écoutant le port 3000...');
})