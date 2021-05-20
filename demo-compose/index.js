import express from 'express';

const app = express();

app.get('/', (req, res) => {
  res.send('coucou je vais bien');
})

app.listen(3000, () => {
  console.log('Server running...');
})