const faker = require('faker')

const inst = `INSERT INTO special_discount (name, desctiplion)
             VALUES`
console.log(inst)

  const minID_special_discount = 1
  const maxID_special_discount = 10
    
  for (let i = minID_special_discount - 1; i < maxID_special_discount; i++) 
  {
    const name = faker.random.words()
    const desctiplion = faker.random.words()

    genInsert_special_discount = `(DEFAULT, '${name}', '${desctiplion}'),`
    console.log(genInsert_special_discount)
  }