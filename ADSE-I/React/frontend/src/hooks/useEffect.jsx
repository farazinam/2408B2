import axios from "axios";
import { useEffect, useState } from "react"


function UE1 (){
    useEffect(() => {
        console.log("This is UseEffect")
    }, [])
    return (
        <>
        <h1>Hello Use Effect</h1>
        </>
    )
}

function FetchAPIData(){
    const [getData, setUser] = useState([]);
    const [isLoading, setLoading] = useState(true);

    useEffect(() => {
        axios.get("https://jsonplaceholder.typicode.com/users")
        .then((response) => {
            setUser(response.data);
            setLoading(false)
        }
        )
        .catch((error) => {
            console.log("Error");
            setLoading(false);
        })
    }, [])
    return (
        <>
        <h1>Fetching Json Placeholder API Data</h1>

        <ul>
            {getData.map((user) => (
                <li key={user.id}> {user.name} - {user.website} - {user.phone} </li>

            ))}
        </ul>
        </>
    )
}

function Timer(){
    useEffect(() => {
        const timer = setInterval(() => {
            console.log("Running...")
        }, 50);
    

    return () => {
        clearInterval(timer)
        console.log("CleanUp Done");
    }
}, [])

    return <h2>Timer is Running...</h2>
}

function CallingTimer(){
    const [show, setShow] = useState(false);


    return (
        <>
        <button onClick={() => setShow(!show)}>Toggle Show</button>
        {show && <Timer />}
        </>
    )
}

function UseEffectFn(){
    return (
        <>
        {/* <FetchAPIData /> */}
        {/* <Timer /> */}
        <CallingTimer />
        </>
    )
}

export default UseEffectFn;