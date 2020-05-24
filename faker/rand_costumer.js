const faker = require('faker')

const inst = `INSERT INTO costumer (name, surname, email, phone)
             VALUES`
console.log(inst)

	const minID_costumer = 1
	const maxID_costumer = 10
    
	for (let i = minID_costumer - 1; i < maxID_costumer; i++) {
		const name = faker.company.companyName()
		const surname = faker.address.city()
		const phone = faker.phone.phoneNumber()
		const email = faker.internet.email()
		
        genInsert_costumer = `(DEFAULT, '${name}', '${surname}', '${email}', '${phone}'),`
console.log(genInsert_costumer)

    }
    