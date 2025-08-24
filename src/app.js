const express = require('express');

function createApp() {
  const app = express();

  app.get('/', (req, res) => {
    res.json({
      message: 'Hello World from Node.js CI/CD 🚀',
      timestamp: new Date().toISOString()
    });
  });

  return app;
}

module.exports = { createApp };
