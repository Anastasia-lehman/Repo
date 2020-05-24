///////          Gen for market

const faker = require('faker')

const inst = `INSERT INTO market (name, town, street, house, open_date, close_date)
                    VALUES`
console.log(inst)
                 
const minID_market = 1
const maxID_market = 10

for (let i = minID_market - 1; i < maxID_market; i++) 
{
const name = faker.name.firstName()
const town = faker.address.city()
const street = faker.address.streetName()
const house = faker.random.number(95)
const open_date = faker.date.past(10).toISOString()
const close_date = faker.date.past(10).toISOString()

genInsert_market = `(DEFAULT, '${name}', '${town}', '${street}', ${house}, '${open_date}', '${close_date}'),`
console.log(genInsert_market)
}
