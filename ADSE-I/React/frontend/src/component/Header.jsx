import { NavLink } from "react-router-dom";

export default function NavigationBar(){
    return (
<nav>
    <NavLink to='/'> Home </NavLink>
    <NavLink to='/event'> Event </NavLink>
    <NavLink to='/usestate'> useState </NavLink>
    <NavLink to='/useeffect'> useEffect </NavLink>
    <NavLink to='/useref'> useRef </NavLink>
    <NavLink to='/muihome'> MUI Home </NavLink>
    <NavLink to='/muigrid'> MUI Grid </NavLink>
    <NavLink to='/profile'> My Profile </NavLink>
    <NavLink to='/contact'> Contact </NavLink>
</nav>
    )
}