import { Box, Button, Container, TextField, Typography } from '@mui/material'
import { useState } from 'react';

function Contact() {

    const [data, setData] = useState({
        un: "",
        em: "",
        sub: ""
    });

    const HandleChange = (e) => {
        setData({...data, [e.target.name]: e.target.value})
    }

    const HandleSubmit = (e) => {
        e.preventDefault();
        console.log("Form Submitted Successfully");
    }
  return (
    <Container  sx={{display: 'flex', flexDirection: 'column', gap: 2, justifyContent: 'center'}}>
        <Typography variant='h2'>
            Contact Us
        </Typography>

        <Box component='form' onSubmit={HandleSubmit}
        sx={{display: 'flex', flexDirection: 'column', gap: 2, justifyContent: 'center'}}
        >
            <TextField variant='outlined' label='UserName' name='un' value={data.un} onChange={HandleChange} required  />

            <TextField variant='filled' label='Email' name='em' value={data.em} onChange={HandleChange} required  />

            <TextField variant='standard' label='Subject' name='sub' value={data.ps} onChange={HandleChange} required  />

            <Button type='submit' variant='contained'> Submit </Button>
        </Box>
    </Container>
  )
}

export default Contact