import { NavLink } from "react-router-dom";

export default function NavigationBar(){
    return (
<nav>
    <NavLink to='/'> Home </NavLink>
    <NavLink to='/event'> Event </NavLink>
    <NavLink to='/usestate'> useState </NavLink>
    <NavLink to='/useeffect'> useEffect </NavLink>
    <NavLink to='/useref'> useRef </NavLink>
</nav>
    )
}