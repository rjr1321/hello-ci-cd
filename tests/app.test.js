const request = require('supertest');
const { createApp } = require('../src/app');

describe('GET /', () => {
  it('should return hello world json', async () => {
    const app = createApp();
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
    expect(res.body).toHaveProperty('message');
    expect(res.body.message).toMatch(/Hello World/i);
  });
});
