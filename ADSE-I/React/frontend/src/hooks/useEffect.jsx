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
        fetch("https://jsonplaceholder.typicode.com/users")
        .then((response) => response.json())
        .then((data) => {
            setUser(data);
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

function UseEffectFn(){
    return (
        <>
        <FetchAPIData />
        </>
    )
}

export default UseEffectFn;