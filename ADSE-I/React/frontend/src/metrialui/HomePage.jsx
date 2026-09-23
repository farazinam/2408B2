import { Box, Button, Card, CardContent, Container, Typography } from "@mui/material";

export default function MaterialHome(){
    return (
        <>
        <Container maxWidth="sm">
            This is Material UI Container
        </Container>
        <Box sx={{padding: '10px', backgroundColor: 'white'}}>
            Hello MUI
        </Box>

        <Button variant="contained" color="warning">
            Click Me
        </Button>

        <Typography variant="h1">
            This is Typography Text with H1 Variant
        </Typography>
        <Typography variant="h2">
            This is Typography Text with H1 Variant
        </Typography>

        <Card>
            <CardContent>
                <Typography variant="h5">This is MUI Card</Typography>
            </CardContent>
        </Card>

        </>
    )
}