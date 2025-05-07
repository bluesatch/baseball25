const Error =()=> {

    return (
        <main className="main" id="errorMain">
            <div className="container">
                <div className="error-div">
                    <h2 className="error-heading text-center">The page you tried to reach is</h2>
                    <img 
                        src='images/errorgif.gif' 
                        className="error-gif img-fluid d-block mx-auto"
                        alt="Bob Uecker's classic scene from Major League"
                        />
                </div>
            </div>
        </main>
    )
}

export default Error