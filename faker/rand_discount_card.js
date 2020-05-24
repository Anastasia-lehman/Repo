///////          Gen for discount_card

const faker = require('faker')

const inst = `INSERT INTO discount_card (card_number)
                    VALUES`
console.log(inst)
                    
for (let i = 0; i < 10; i++) 
{
    const card_number = faker.random.number(1000000)

    genInsert_discount_card = `(DEFAULT, ${card_number}),`
    console.log(genInsert_discount_card)
}
