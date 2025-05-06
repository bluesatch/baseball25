const con = require('../../config/dbconfig')

const playerDao = {
    table: 'player',

    sortPlayers: (res, table, sorter)=> {

        let query

        if (sorter == 'lName') {
            query = `SELECT * from ${table} ORDER BY ${sorter}, fName;`
        } else {
            query = `SELECT * from ${table} ORDER BY ${sorter};`
        }

        con.execute(
            query,
            (error, rows)=> {
                if (!error) {
                    if (rows.length === 1) {
                        res.json(...rows)
                    } else {
                        res.json(rows)
                    }
                } else {
                    console.log(`${table}Dao error: `, error)
                }
            }
        )
    }

}

module.exports = playerDao