# Gyan Yudh - Gamified Learning Platform

A modern, game-inspired web application for B.Tech students that gamifies the learning experience with competitive elements, team collaboration, and skill-building challenges.

## 🎮 Features

### 🏟️ The Battleground (Dashboard)
- **Three-column layout** with user profile, main content, and activity feed
- **Weekly Sprint tracking** with countdown timer
- **Team rankings** with top 5 teams comparison
- **Daily quests** with coding challenges, quizzes, and projects
- **Real-time activity feed** showing team member achievements

### 👥 Your Squad (Team Page)
- **Team overview** with rank, total XP, and winning streak
- **Member profiles** with individual contributions and status
- **Team achievements** and progress tracking
- **Challenge and messaging system** between team members

### ⚔️ The Armory (Earn XP)
- **Multiple XP earning methods**: Coding challenges, quizzes, flashcards, debugging, streaks
- **Difficulty-based rewards** with varying XP amounts
- **Progress tracking** for each activity type
- **Daily special challenges** with bonus XP

### 🗡️ Coding Arena
- **Problem of the Day** with detailed descriptions and examples
- **Multi-language support**: Python, JavaScript, Java, C++, C
- **Integrated code editor** with syntax highlighting
- **Real-time code execution** and testing
- **Head-to-Head duels** with other players

### 🏆 Hall of Fame (Leaderboard)
- **Podium display** for top 3 teams
- **Complete rankings table** with filtering options
- **Multiple leaderboard views**: All-time, weekly, language-specific
- **Competition statistics** and progress tracking

## 🛠️ Technology Stack

### Frontend
- **React.js** with functional components and hooks
- **React Router** for navigation
- **Axios** for API communication
- **Lucide React** for icons
- **CSS3** with custom animations and responsive design

### Backend
- **Node.js** with Express.js framework
- **MongoDB** with Mongoose ODM
- **JWT** for authentication
- **bcryptjs** for password hashing
- **CORS** for cross-origin requests

### Deployment
- **Frontend**: Vercel
- **Backend**: Render
- **Database**: MongoDB Atlas

## 🚀 Getting Started

### Prerequisites
- Node.js (v14 or higher)
- MongoDB (local or Atlas)
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/gyan-yudh.git
   cd gyan-yudh
   ```

2. **Install all dependencies**
   ```bash
   npm run install-all
   ```
   
   Or install separately:
   ```bash
   # Backend dependencies
   npm run install-backend
   
   # Frontend dependencies  
   npm run install-frontend
   ```

3. **Environment Setup**
   Create a `.env` file in the `backend` directory:
   ```env
   MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/gyan-yudh
   JWT_SECRET=your-super-secret-jwt-key
   NODE_ENV=development
   PORT=5000
   FRONTEND_URL=http://localhost:3000
   ```

4. **Seed the database** (optional)
   ```bash
   npm run seed
   ```

5. **Run the application**
   ```bash
   # Development mode (runs both frontend and backend)
   npm run dev
   
   # Or run separately
   npm run server    # Backend only (port 5000)
   npm run frontend  # Frontend only (port 3000)
   ```

6. **Access the application**
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:5000
   - API Health Check: http://localhost:5000/api/health

## 📱 Usage

### Getting Started
1. **Register** a new account with your team name
2. **Complete your profile** and join your team
3. **Explore the dashboard** to see available quests and team rankings
4. **Start earning XP** by completing coding challenges and quizzes
5. **Compete with other teams** on the leaderboard

### Key Features
- **Daily Goals**: Set and track daily XP targets
- **Team Collaboration**: Work together to climb the leaderboard
- **Skill Building**: Practice coding in multiple languages
- **Real-time Updates**: See live activity from your team members
- **Achievement System**: Unlock badges and power-ups

## 📁 Project Structure
```
gyan-yudh/
├── frontend/              # React.js frontend
│   ├── src/
│   │   ├── components/    # Reusable components
│   │   ├── pages/        # Main application pages
│   │   ├── contexts/     # React context for state management
│   │   └── App.js        # Main app component
│   ├── public/           # Static assets
│   ├── vercel.json       # Vercel deployment config
│   └── package.json      # Frontend dependencies
├── backend/               # Node.js/Express backend
│   ├── models/           # MongoDB models
│   ├── routes/           # Express API routes
│   ├── middleware/       # Authentication middleware
│   ├── server.js         # Express server setup
│   ├── seedData.js       # Database seeding script
│   ├── Procfile          # Render deployment config
│   └── package.json      # Backend dependencies
├── package.json          # Root package.json for development
├── deploy.md             # Detailed deployment guide
└── README.md             # Project documentation
```

## 🌐 Deployment

The application is designed for separate deployment of frontend and backend:

### Frontend (Vercel)
- Deploy the `frontend` folder to Vercel
- Automatic builds on Git push
- Environment variable: `REACT_APP_API_URL`

### Backend (Render)
- Deploy the `backend` folder to Render
- Node.js environment with automatic builds
- Environment variables: `MONGODB_URI`, `JWT_SECRET`, `FRONTEND_URL`

### Database (MongoDB Atlas)
- Cloud MongoDB database
- Free tier available
- Automatic backups and scaling

See [deploy.md](deploy.md) for detailed deployment instructions.

## 🎨 Design System

### Color Palette
- **Primary**: Electric Blue (#00d2ff)
- **Secondary**: Neon Green (#39ff14)
- **Accent**: Orange (#ff6b35)
- **Background**: Dark gradients (#0f0f23 to #1a1a2e)

### Typography
- **Headers**: Poppins (800 weight)
- **Body**: Poppins (400-600 weight)
- **Code**: Fira Code (monospace)

### Components
- **Cards**: Rounded corners with subtle shadows
- **Buttons**: Gradient backgrounds with hover effects
- **Progress Bars**: Animated with gradient fills
- **Icons**: Lucide React icon set

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Inspired by competitive programming platforms
- Design influenced by modern gaming interfaces
- Built for the B.Tech student community

## 📞 Support

For support, email support@gyanyudh.com or join our Discord community.

---

**Happy Coding! May the best team win! 🏆**