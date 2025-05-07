import { Link } from "react-router"

const Header = ({user})=> {

    return (
        <header className="header" id="header">
            <div className="container">
                <div className="row">
                    <div className="col-md-5">
                        <h1 className="text-capitalize">my baseball app</h1>
                    </div>
                    <div className="col-md-7">
                        <nav className="nav top-nav justify-content-around" id="topNav">
                            <Link to='/'>Home</Link>
                            <Link to='/players'>Players</Link>
                            <Link to='/teams'>Teams</Link>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
    )
}

export default Header