///////          Gen for market


const faker = require('faker')

const insrt = `INSERT INTO supplier (firm, addres, phone, email)
                    VALUES`
console.log(insrt)

for (let i = 0; i < 10; i++) 
{
const firm = faker.company.companyName()
const phone = faker.phone.phoneNumber()
const email = faker.internet.email()

const genInsert_supplier = `(DEFAULT, '${firm}', '${phone}', '${email}'),`
console.log(genInsert_supplier)
}