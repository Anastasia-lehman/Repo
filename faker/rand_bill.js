const faker = require('faker')

const inst = `INSERT INTO buy (create_data, desctiplion)
             VALUES`
console.log(inst)

	const minID_buy = 1
	const maxID_buy = 10
    
	for (let i = minID_buy - 1; i < maxID_buy; i++) {
        const create_data = faker.date.past(10).toISOString()
        
        genInsert_buy = `(DEFAULT, '${create_data}'),`
        console.log(genInsert_buy)

    }
    