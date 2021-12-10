const request = require('supertest')
const app = require('../server')

let port = 8000

let appServer = app.listen(port, () => console.log(`Listening at port ${port}`));

    describe('Test customer', () => {
        it('should create a new customer', async () => {
            const res = await request(app)
                .post('/api/customer')
                .send({
                    customerNumber: 9,
                    address: 'test is cool',
                    nom: "Bobby",
                  createdAt: "2021:12:10:13:44:50",
                  updatedAt: "2021:12:10:13:44:50"
                })
            expect(res.statusCode).toEqual(200)
            appServer.close()
        })
      it('should update a customer', async () => {
        const res = await request(app)
          .put('/api/customer/1')
          .send({
            nom: "Nouveau nom",
          })
        expect(res.statusCode).toEqual(200)
        appServer.close()
      })
      it('should get one customer', async () => {
        const res = await request(app)
          .get('/api/customer/1')
        expect(res.statusCode).toEqual(200)
        appServer.close()
      })
    })