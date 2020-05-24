const faker = require('faker')

const inst = `INSERT INTO suply_product (count_product, price_product)
             VALUES`
console.log(inst)
              

const minID_supl_prod = 1
const maxID_supl_prod = 10
for (let i = minID_supl_prod -1; i < maxID_supl_prod; i++) 
{

const count_product = faker.random.number(500)
const price_product = faker.commerce.price()

genInsert_supl_prod = `(DEFAULT,  ${count_product}, '${price_product}'),`
console.log(genInsert_supl_prod)
}
