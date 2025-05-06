const con = require('../../config/dbconfig')

const positionDao = {
    table: 'position',

    // find players by position
    findPlayersByPosition: (res, table, position)=> {

        let players = []
        let player = {}

        con.execute(
            `SELECT p.player_id, concat(p.fName, ' ', p.lName) player
            FROM player p 
            JOIN player_to_pos pp ON p.player_id = pp.player_id
            JOIN position po ON pp.position_id = po.position_id
            WHERE po.position = '${position}';`,
            (error, rows)=> {
                if (!error) {
                    Object.values(rows).forEach(obj => {
                        player = { player_id: obj.player_id, name: obj.player }

                        players.push(player)
                    })


                    con.execute(
                        `SELECT * FROM ${table} WHERE position = '${position}';`,
                        (error, rows)=> {

                            rows.forEach(row => row.players = players)

                            if (!error) {
                                rows.length === 1 ? res.json(...rows) : res.json(rows)
                            } else {
                                console.log(`${table}Dao error: `, error)
                            }
                        }
                    )
                } else {
                    console.log(error)
                }
            }
        )
    }

}

module.exports = positionDao