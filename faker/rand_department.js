const faker = require('faker')

const inst = `INSERT INTO department (create_data, desctiplion)
             VALUES`
console.log(inst)

	const minID_department = 1
	const maxID_department = 10
    
    for (let i = minID_department - 1; i < maxID_department; i++) 
    {
        const name = faker.company.catchPhraseDescriptor()
        
        genInsert_department = `(DEFAULT, '${name}'),`
        console.log(genInsert_department)
    }
    