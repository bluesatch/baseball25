import { useState, useEffect } from "react";
import { useParams } from "react-router";
import axios from "axios";

const PlayerSingle =()=> {

    const [ player, setPlayer ] = useState({})
    const params = useParams()
    const url = `http://localhost:3005/api/player/${params.id}`

    useEffect(()=> {
        axios.get(url).then(res => setPlayer(res.data))
    }, [])

    

    return (
        <main className="main" id="playerSingleMain">
            <div className="container">
                <div className="row">
                    <div className="col-md-6">
                        <h2 className="text-capitalize ps-name">{player.fName} {player.lName}</h2>
                        <img src={ player.imgUrl } alt={`image of ${player.fName} ${player.lName}`} className="img-fluid ps-image" />
                    </div>
                    <div className="col-md-6">
                        <h2 className="text-capitalize ps-stats">stats</h2>
                        <ul className="stats-list list-unstyled">
                            {player.nickName != '' && <li className="list-item text-capitalize mb-2">"{player.nickName}"</li>}
                            <li className="list-item text-capitalize mb-2">full name: {player.fullName}</li>
                            <li className="list-item text-capitalize mb-2">date of birth: {player.date_of_birth.slice(0, 10)}</li>
                            <li className="list-item text-capitalize mb-2">career: {player.debut} - {player.ended}</li>
                            <li className="list-item text-capitalize mb-2">bats: {player.bats}</li>
                            <li className="list-item text-capitalize mb-2">throws: {player.throws}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </main>
    )
    
}

export default PlayerSingle
