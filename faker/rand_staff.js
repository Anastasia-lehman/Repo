const faker = require('faker')

const inst = `INSERT INTO staff (name, surname, email, phone)
             VALUES`
console.log(inst)

	const minID_staff = 1
	const maxID_staff = 10
    
    for (let i = minID_staff - 1; i < maxID_staff; i++) 
    {
		const name = faker.name.firstName()
		const surname = faker.name.lastName()
		const contacts = faker.phone.phoneNumber()
        const birth = faker.date.past().toISOString()
        var bir = birth.slice(0, 10)
        const contresidence_permitacts = faker.address.streetAddress()
        const timetable = faker.date.weekday()
		
        genInsert_staff = `(DEFAULT, '${name}', '${surname}', '${contacts}', '${bir}', '${contresidence_permitacts}', '${timetable}'),`
        console.log(genInsert_staff)

    }
    