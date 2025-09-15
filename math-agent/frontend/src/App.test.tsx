import { render, screen } from '@testing-library/react'
import { it, expect } from 'vitest'
import App from './App'

it('renders greeting', () => {
  render(<App />)
  expect(screen.getByText(/Hello, Math Agent!/i)).toBeInTheDocument()
})
