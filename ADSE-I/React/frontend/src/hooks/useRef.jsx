import { useRef } from "react"

function LoginForm (){
    const un = useRef(null);
    const ps = useRef(null);

    const HandleSubmit = (e) => {
        e.preventDefault();
        console.log("UserName is: ", un.current.value);
        console.log("Password is: ", ps.current.value);
    }
    return (
        // <>
        <form onSubmit={HandleSubmit}>
        <label htmlFor=""> UserName </label>
        <input type="text" ref={un} /> <br />

        <label htmlFor=""> Password </label>
        <input type="password" ref={ps} /> <br />

        <button type="submit"> LogIn </button>
        </form>
        // </>
    )
}

export default function UseRefFn (){
    return (
        <>
        <LoginForm />
        </>
    )
}