import { useContext } from 'react'
import UserContext from '../context/UserContext';

function Dashboard() {
  const [user, setUser] = useContext(UserContext);

  return (
    <>
    <div>Dashboard</div>
    <h2>Welcome {user}</h2>
    <button onChange={() => {setUser("Faraz")}}>Change User</button>
    </>
  )
}

export default Dashboard