import { useState } from "react";

function Counter (){
    const [count, setCount] = useState(0);

    return (
        <>
        <h2>Count: {count}</h2>
        <button onClick={() => setCount(count + 1)}>Increase</button>
        </>
    )
}

function LightDarkMode (){
    const [isDark, setIsDark] = useState(false);

    const toggleMode = () => {
        setIsDark(!isDark);
    }

    const styles =  {
        backgroundColor : isDark ? "black" : "white",
        color : isDark ? "white" : "black",
        transition: "all 0.3 ease"
    }

    return (
        <>
        <div style={styles}>
            <h1> {isDark ? "Dark Mode" : "Light Mode"} </h1>
            <button onClick={toggleMode}>
                Change to {isDark ? "Light" : "Dark"} Mode
            </button>
            <p>This is an Example of Dark light Mode</p>
        </div>
        </>
    )
}

function PasswordToggle(){
    const [isShowPass, setShowPass] = useState(false);

    const ChangeFn = () => {
        setShowPass(!isShowPass);
    }
    return (
        <>
        <h3>Password Field</h3>
        <input type={isShowPass ? "text" : "password"} />
        <button onClick={ChangeFn}> {isShowPass ? "🐵" : "🙈"  }</button>
        </>
    )
}


function LoginForm(){
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    

    const handleSubmit = (e) => {
        e.preventDefault();
        console.log(email, password);
    }

    return (
        <>
        <form onSubmit={handleSubmit}>
            <label htmlFor="">Email</label>
            <input type="text" value={email} onChange={(e) => setEmail(e.target.value)} /> <br />

            <label htmlFor="">Password</label>
            <input type="password" value={password} onChange={(e) => setPassword(e.target.value)} /> <br />

            <button type="submit">Log In</button>
        </form>
        </>
    )
}


function USHook(){
    return (
        <>
        {/* <Counter /> */}
        <LightDarkMode />
        <PasswordToggle />

        <LoginForm />
        </>
    )
}

export default USHook;