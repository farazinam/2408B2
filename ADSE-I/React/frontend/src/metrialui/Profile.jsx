import { GitHub, LinkedIn, YouTube } from '@mui/icons-material'
import { Avatar, Box, Button, Card, CardActions, CardContent, Container, Typography } from '@mui/material'

function Profile() {
  return (
    <Container maxWidth='sm'>
        <Box sx={{mt: 6}}>
            <Card sx={{textAlign:"center", padding: 3}}>

                <Avatar 
                sx={{width: 100, height: 100, 
                margin: "0 auto", bgcolor:"primary.main", fontSize: 32}}>
                    FI
                </Avatar>

                <CardContent>
                    <Typography variant='h5' fontWeight='bold'>
                        Faraz Inam
                    </Typography>
                    <Typography variant='body2'>
                        Full Stack Developer - MERN Stack
                    </Typography>
                    <Typography sx={{mt: 2}}>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui, optio?
                    </Typography>
                </CardContent>

                <CardActions sx={{justifyContent: 'center'}}>
                    <Button variant='contained' sx={{mr:1}} startIcon={<GitHub />}>
                        GitHub
                    </Button>
                    <Button variant='outlined' sx={{mr:1}} startIcon={<LinkedIn /> }>
                        LinkedIn 
                    </Button>
                    <Button variant='outlined' sx={{mr:1}} startIcon={<YouTube /> }>
                        Youtube 
                    </Button>
                </CardActions>
            </Card>
        </Box>
    </Container>
  )
}

export default Profile