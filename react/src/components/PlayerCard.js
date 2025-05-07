import { Link } from "react-router"

const PlayerCard =(props)=> {

    return (
        <div className="col">
            <div className="card h-100">
                <img src={props.imgUrl} alt={props.first} className="img-fluid player-image card-img-top" />
                <div className="card-body">
                    <h3 className="card-title text-capitalize">{props.first} {props.last}</h3>
                    <p className="card-item">Career: {props.debut} - {props.ended}</p>
                </div>
                <footer className="card-footer">
                    <p className="card-footer-text">
                        <Link to={`/players/${props.id}`}>view more</Link>
                    </p>
                </footer>
            </div>
        </div>
    )
}

export default PlayerCard