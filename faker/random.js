//////

faker = require('faker')


console.log('INSERT INTO supplier')
name = faker.name.firstName()
city = faker.address.city()
street = faker.address.streetName()
house = faker.random.number(95)
phone = faker.phone.phoneNumber()
email = faker.internet.email()

genInsert = `VALUES (DEFAULT, '${name}', '${city}', '${street}', '${house}', '${phone}', '${email}')`
console.log(genInsert)
////////

const fs = require('fs')
const faker = require('faker')

// Если хотите данные на русском (мб не особо качественно быть), раскомментьте
// faker.locale = 'ru'

// VALUES добавляемые в таблицу
let insertValues = []

// Заполнение таблицы supplier
let supplierInsert = `INSERT INTO supplier (name, city, street, house, phone, email)
VALUES`

// генерируемые ID от 1 до 10
// используем эти значения для дальнейшей генерации
// внешних ключей в таблицах, связанных с supplier
const minIDSupplier = 1
const maxIDSupplier = 10

for (let i = minIDSupplier - 1; i < maxIDSupplier; i++) {
	const name = faker.company.companyName()
	const city = faker.address.city()
	const street = faker.address.streetName()
	const house = faker.random.number(200)
	const phone = faker.phone.phoneNumber()
	const email = faker.internet.email()

	// не используем кавычки (''), когда добавляется число
	insertValues.push(
		`('${name}', '${city}', '${street}', ${house}, '${phone}', '${email}')`,
	)
}

// В insert - строка сгенерированных добавленных значений
let insert = supplierInsert + insertValues.join(',\n') + ';\n\n'

// Заполнение связанной с supplier таблицей registration_product
let registrationProductInsert = `INSERT INTO registration_product (information, waybill, requisites, supplier_id)
VALUES`

insertValues = []

// registration_product
for (let i = 0; i < 20; i++) {
	const information = faker.lorem.sentence()
	const waybill = faker.random.number(1000)
	const requisites = faker.company.catchPhrase()
	// supplier_id - это внешний ключ, т.е. он может принимать только значения
	// которые есть в id таблицы supplier
	// по этой причине положили минимальное и максимальное значение в переменную
	// чтобы сгенерировать значение в этом промежутке
	const supplier_id = faker.random.number({
		min: minIDSupplier,
		max: maxIDSupplier,
	})

	insertValues.push(
		`('${information}', ${waybill}, '${requisites}', ${supplier_id})`,
	)
}

// добавляем в общую строку заполнения данных данные для registration_product
insert += registrationProductInsert + insertValues.join(',\n') + ';\n'

console.log(insert)

// сохраняем в файл data.sql сгенерированный INSERT
// Будьте внимательны! Я никак не экранировал случай, когда в данных
// Например, фамилии приходит ' типо O'konnor.
// В таком случае сгенерированный sql будет кривоват
fs.writeFile('data.sql', insert, (err) => {
	if (err) return console.error(err)
	console.log('File saved')
})