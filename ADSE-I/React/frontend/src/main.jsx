import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.jsx'
import { BrowserRouter } from 'react-router-dom'
import { ThemeProvider } from '@emotion/react'
import { createTheme, CssBaseline } from '@mui/material'
import UserProvider from './context/UserProvider.jsx'

const theme = createTheme({
  palette:{
    primary:{
      main: "#1976d2",
    }
  }
})

createRoot(document.getElementById('root')).render(
  // <StrictMode>
  <UserProvider>
  <BrowserRouter>
  <ThemeProvider theme={theme}>
    <CssBaseline />
    <App />
  </ThemeProvider>
  </BrowserRouter>
  </UserProvider>
  // </StrictMode>,
)
