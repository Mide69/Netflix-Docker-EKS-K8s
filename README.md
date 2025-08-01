# Netflix Clone

A modern Netflix clone application built with React that allows users to browse and discover movies and TV shows using The Movie Database (TMDB) API.

## Features

- Browse trending movies and TV shows
- Search for specific content
- View detailed information about movies and shows
- Responsive design for all devices
- Netflix-like user interface

## Prerequisites

### TMDB API Setup

1. **Create a TMDB Account**
   - Visit [The Movie Database (TMDB)](https://www.themoviedb.org/)
   - Click "Sign Up" and create a free account
   - Verify your email address

2. **Generate API Key**
   - Log in to your TMDB account
   - Go to your account settings by clicking your profile icon
   - Navigate to "API" section in the left sidebar
   - Click "Create" under "Request an API Key"
   - Choose "Developer" option
   - Fill out the required information:
     - Application Name: "Netflix Clone"
     - Application URL: "http://localhost:5173" (for local development)
     - Application Summary: Brief description of your project
   - Accept the terms and submit
   - Copy your API Key (v3 auth)

3. **Environment Configuration**
   - Create a `.env` file in the project root
   - Copy contents from `.env.example`
   - Replace the placeholder with your actual API key:
     ```
     REACT_APP_TMDB_API_KEY=your_actual_api_key_here
     ```

## Local Development

### Prerequisites
- Node.js (v14 or higher)
- npm or yarn

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd netflix-clone
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up environment variables**
   ```bash
   cp .env.example .env
   # Edit .env file with your TMDB API key
   ```

4. **Start the development server**
   ```bash
   npm start
   ```

5. **Access the application**
   - Open your browser and navigate to `http://localhost:5173`

## Docker Deployment

### Build and Run with Docker

1. **Build the Docker image**
   ```bash
   docker build --build-arg TMDB_V3_API_KEY=your_actual_api_key_here -t netflix-clone .
   ```

2. **Run the container**
   ```bash
   docker run --name netflix-clone-app --rm -d -p 3000:80 netflix-clone
   ```

3. **Access the application**
   - Open your browser and navigate to `http://localhost:80`

### Docker Compose (Alternative)

1. **Create docker-compose.yml**
   ```yaml
   version: '3.8'
   services:
     netflix-clone:
       build:
         context: .
         args:
           TMDB_V3_API_KEY: your_actual_api_key_here
       ports:
         - "80:80"
       container_name: netflix-clone-app
   ```

2. **Run with Docker Compose**
   ```bash
   docker-compose up -d
   ```

## Production Deployment

### Build for Production
```bash
npm run build
```

### Environment Variables
Ensure the following environment variables are set in production:
- `REACT_APP_TMDB_API_KEY`: Your TMDB API key

## Troubleshooting

- **API Key Issues**: Ensure your TMDB API key is valid and properly set in the `.env` file
- **CORS Errors**: TMDB API should work from localhost and most domains
- **Build Failures**: Check that all dependencies are installed and Node.js version is compatible

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request


## License

This project is built with love by Johntoby.