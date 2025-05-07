import PlayerCard from "./PlayerCard"

const Players =( { data } )=> {

    console.log(data)

    const playerCards = data.map(player => {
        return <PlayerCard
            key={player.player_id}
            id={player.player_id}
            first={player.fName}
            last={player.lName}
            debut={player.debut}
            ended={player.ended}
            bats={player.bats}
            throws={player.throws}
            imgUrl={player.imgUrl}
        />
    })

    return (
        <main className="main" id="playersMain">
            <div className="container">
                <h2 className="display-3 text-capitalize">list of players</h2>
                <section className="section player-card-section my-5" id="playerCardSection">
                    <div className="row row-cols-1 row-cols-md-3 row-cols-lg-5 g-4">
                        { playerCards }
                    </div>
                </section>
            </div>
        </main>
    )
}

export default Players