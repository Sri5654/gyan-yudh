#!/bin/bash

echo "🎮 Setting up Gyan Yudh - Gamified Learning Platform"
echo "=================================================="

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js 18.x or higher."
    exit 1
fi

echo "✅ Node.js found: $(node --version)"

# Install backend dependencies
echo "📦 Installing backend dependencies..."
cd backend
npm install
if [ $? -ne 0 ]; then
    echo "❌ Failed to install backend dependencies"
    exit 1
fi
cd ..

# Install frontend dependencies
echo "📦 Installing frontend dependencies..."
cd frontend
npm install
if [ $? -ne 0 ]; then
    echo "❌ Failed to install frontend dependencies"
    exit 1
fi
cd ..

# Create backend .env file if it doesn't exist
if [ ! -f "backend/.env" ]; then
    echo "⚙️ Creating backend .env file..."
    cat > backend/.env << EOL
MONGODB_URI=mongodb://localhost:27017/gyan-yudh
JWT_SECRET=your-super-secret-jwt-key-change-this-in-production
NODE_ENV=development
PORT=5000
FRONTEND_URL=http://localhost:3000
EOL
    echo "📝 Created backend/.env - Please update with your MongoDB URI"
fi

echo ""
echo "🎉 Setup complete!"
echo ""
echo "Next steps:"
echo "1. Update backend/.env with your MongoDB connection string"
echo "2. Run 'npm run dev' to start both frontend and backend"
echo "3. Visit http://localhost:3000 to see the application"
echo ""
echo "Optional: Run 'npm run seed' to populate sample data"
echo ""
echo "Happy coding! 🚀"