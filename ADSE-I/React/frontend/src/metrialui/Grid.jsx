import { Grid } from '@mui/material'
import React from 'react'

function MUIGrid() {
  return (
    <Grid container spacing={2} sx={{backgroundColor: "lightgreen"}}>
        <Grid item xs={12} md={6} sx={{backgroundColor: "lightcyan"}}>Left Side</Grid>
        <Grid item xs={12} md={6} sx={{backgroundColor: "lightcyan"}}>Right Side</Grid>
    </Grid>
  )
}

export default MUIGrid