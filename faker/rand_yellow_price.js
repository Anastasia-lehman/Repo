///////          Gen for yellow_price

const faker = require('faker')

const inst = `INSERT INTO yellow_price (individual, public, sum_price)
             VALUES`
console.log(inst)
                    
for (let i = 0; i < 10; i++) 
{
const individual = faker.commerce.price()
const public = faker.commerce.price()
const sum_price = faker.commerce.price()

genInsert_yellow_price = `(DEFAULT, '${individual}', '${public}', '${sum_price}'),`
console.log(genInsert_yellow_price)
}
