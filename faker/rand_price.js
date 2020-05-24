///////          Gen for price

const faker = require('faker')

const inst = `INSERT INTO price (price_before, price_after)
             VALUES`
console.log(inst)
                    
for (let i = 0; i < 10; i++) 
{

const price_before = faker.commerce.price()
const price_after = faker.commerce.price()

genInsert_price = `(DEFAULT, '${price_before}', '${price_after}'),`
console.log(genInsert_price)
}
