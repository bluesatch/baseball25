const con = require('../../config/dbconfig')

const userDao = {
    table: 'user',

    findUsersByRole: (res, table, role)=> {

        con.execute(
            `SELECT * FROM ${table} WHERE role = '${role}';`,
            (error, rows)=> {
                if(!error) {
                    rows.length === 1 ? res.json(...rows) : res.json(rows)
                } else {
                    console.log(`${table}Dao error: `, error)
                }
            }
        )
    }

}

module.exports = userDao