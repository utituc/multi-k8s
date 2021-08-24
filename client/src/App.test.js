import React from 'react';
import { render } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  // deactivate the following lines because renering "App" would
  // also render Fib, and Fib would try to start a request.
  // In a "real" project with "real" tests we would mock the server Fib is 
  // trying to access ...

  //const { getByText } = render(<App />);
  //const linkElement = getByText(/learn react/i);
  //expect(linkElement).toBeInTheDocument();
});
