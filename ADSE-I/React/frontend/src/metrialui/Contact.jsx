import { Box, Button, Container, TextField, Typography } from '@mui/material'
import { useState } from 'react';

function Contact() {

    const [data, setData] = useState({
        un: "",
        em: "",
        sub: ""
    });

    const [error, setError] = useState({});

    const HandleChange = (e) => {
        setData({...data, [e.target.name]: e.target.value})
    }

    const HandleSubmit = (e) => {
        e.preventDefault();

        let temp = {};
        if(!data.un) temp.username = "UserName Required";
        if(!data.em) temp.email = "Email Required";
        if(!data.sub) temp.subject = "Subject Required";

        setError(temp);
        
        if(Object.keys(temp).length == 0){
        alert("Form Submitted Successfully");
        }
    }
  return (
    <Container  sx={{display: 'flex', flexDirection: 'column', 
    gap: 2, justifyContent: 'center'}}>
        <Typography variant='h2'>
            Contact Us
        </Typography>

        <Box component='form' onSubmit={HandleSubmit}
        sx={{display: 'flex', flexDirection: 'column', gap: 2, 
            justifyContent: 'center'}}
        >
            <TextField 
            variant='outlined' label='UserName' 
            name='un' value={data.un} 
            onChange={HandleChange}
            error={!!error.username}
            helperText={error.username}
              />

            <TextField 
            variant='filled' 
            label='Email' name='em' 
            value={data.em} 
            onChange={HandleChange}
            error={!!error.email}
            helperText={error.email}
            />

            <TextField 
            variant='standard' label='Subject' 
            name='sub' value={data.sub} 
            onChange={HandleChange}
            error={!!error.subject}
            helperText={error.subject}
            />

            <Button type='submit' variant='contained'> Submit </Button>
        </Box>
    </Container>
  )
}

export default Contact