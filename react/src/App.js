import { useState, useEffect } from 'react'
import { Routes, Route } from 'react-router'
import axios from 'axios'

import Header from "./components/Header"
import Footer from "./components/Footer"
import Home from "./components/Home"
import Players from './components/Players'
import PlayerSingle from './components/PlayerSingle'
import Teams from './components/Teams'
import Error from './components/Error'

const App =()=> {


    const [ players, setPlayers ] = useState([])
    const [ user, setUser ] = useState({ username: 'guest'})
    const [ team, setTeams ] = useState([])
    const [ position, setPosition ] = useState([])

    // useEffect()
    useEffect(()=> {
        const url = 'http://localhost:3005/api/player'

        axios.get(url).then(res => setPlayers(res.data))
    }, [])

    return (
        <>
            <Header user={user}/>
            <Routes>
                <Route path='/' index element={<Home /> } />
                <Route path='/players' element={<Players data={players} /> } />
                <Route path='/players/:id' element={<PlayerSingle /> } />
                <Route path='/teams' element={<Teams /> } />
                <Route path="*" element={<Error /> } />
            </Routes>
            <Footer />
        </>
    )
}

export default App