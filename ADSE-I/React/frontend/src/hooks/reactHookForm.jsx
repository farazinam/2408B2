import React from 'react'
import { useForm } from 'react-hook-form'

function ReactHookForm() {
    const {register, handleSubmit, formState: {errors}} = useForm();

    const onSubmit = (data) => {
        console.log(data);
    }
  return (
    <form onSubmit={handleSubmit(onSubmit)}>

        <input type="text" 
        placeholder='UserName'
        {
            ...register("username", {
                required: "Username is Required"
            })
        } />
        <p style={{color: "red"}}> {errors.username?.message} </p>

        <input type="text" 
        placeholder='email'
        {
            ...register("email", {
                required: "Email is Required",
                minLength: {
                    value: 10,
                    message: "At least 10 Characters required"
                },
                pattern:{
                    value: /^\S+@\S+\.\S+$/,
                    message: "Email Should be valid"
                }
            })
        }
         />
        <p style={{color: "red"}}> {errors.email?.message} </p>

         <input type="password" 
        placeholder='password'
        {
            ...register("password", {
                required: "Password is Required",
                minLength: {
                    value: 10,
                    message: "At least 10 Characters required"
                },
                pattern:{
                    value: /^[A-Z]+[a-z]+[0-9]+[!@#$%^&*]$/,
                    message: "Password Should contain small letter, capital letter, number and special character"
                }
            })
        }
         />
        <p style={{color: "red"}}> {errors.password?.message} </p>

        <button type="submit">Submit</button>
    </form>
  )
}

export default ReactHookForm