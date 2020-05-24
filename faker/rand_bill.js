const faker = require('faker')

const inst = `INSERT INTO bill (create_data, desctiplion)
             VALUES`
console.log(inst)

	const minID_bill = 1
	const maxID_bill = 10
    
    for (let i = minID_bill - 1; i < maxID_bill; i++)
    {
        const create_data = faker.date.past(10).toISOString()
        
        genInsert_bill = `(DEFAULT, '${create_data}'),`
        console.log(genInsert_bill)
    }
    