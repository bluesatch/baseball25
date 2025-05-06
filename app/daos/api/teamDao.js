const con = require('../../config/dbconfig')

const teamDao = {

    table: 'team',

    findByLeague: (res, table, league)=> {

        con.execute(
            `SELECT * FROM ${table} WHERE league = '${league}' ORDER BY team_name;`,
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
    },

   // get players for team
    findTeamAndPlayers: (res, table, team)=> {

        let players = []
        let player = {}

        con.execute(
            `SELECT p.player_id, concat(p.fName, ' ', p.lName) player
            FROM player p 
            JOIN player_to_team pt ON p.player_id = pt.player_id
            JOIN team t ON pt.team_id = t.team_id
            WHERE t.team_name = '${team}';`,
            (error, rows)=> {
                if (!error) {
                    Object.values(rows).forEach(obj => {
                        player = { player_id: obj.player_id, name: obj.player}

                        players.push(player)
                    })

                    console.log(players)
                    con.execute(
                        `SELECT * FROM ${table} WHERE team_name = '${team}';`,
                        (error, rows)=> {
                            rows.forEach(row => {
                                row.players = players
                            })

                            if (!error) {
                                rows.length === 1 ? res.json(...rows) : res.json(rows)
                            } else {
                                console.log(`${table}Dao error: `, error)
                            }
                        }
                    )
                }
            }
        )
    }
}

module.exports = teamDao