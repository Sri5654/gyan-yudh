# Deployment Guide for Gyan Yudh

## Prerequisites
1. GitHub account
2. Vercel account (for frontend)
3. Render account (for backend)
4. MongoDB Atlas account (for database)

## Project Structure
```
gyan-yudh/
├── frontend/          # React.js frontend
├── backend/           # Node.js/Express backend
├── package.json       # Root package.json for development
└── README.md
```

## Step 1: Database Setup (MongoDB Atlas)

1. Go to [MongoDB Atlas](https://www.mongodb.com/atlas)
2. Create a new cluster (free tier is sufficient)
3. Create a database user with read/write permissions
4. Add your IP address to network access (or use 0.0.0.0/0 for all IPs)
5. Get your connection string: `mongodb+srv://username:password@cluster.mongodb.net/gyan-yudh`

## Step 2: Push to GitHub

```bash
git init
git add .
git commit -m "Initial commit: Gyan Yudh gamified learning platform"
git branch -M main
git remote add origin https://github.com/yourusername/gyan-yudh.git
git push -u origin main
```

## Step 3: Deploy Backend (Render)

1. Go to [Render](https://render.com)
2. Click "New" → "Web Service"
3. Connect your GitHub repository
4. Configure:
   - **Name**: gyan-yudh-backend
   - **Environment**: Node
   - **Root Directory**: `backend`
   - **Build Command**: `npm install`
   - **Start Command**: `npm start`
5. Add Environment Variables:
   - `MONGODB_URI`: Your MongoDB Atlas connection string
   - `JWT_SECRET`: A secure random string (generate a strong password)
   - `NODE_ENV`: production
   - `PORT`: 5000
   - `FRONTEND_URL`: https://your-frontend-domain.vercel.app
6. Deploy and note your backend URL

## Step 4: Deploy Frontend (Vercel)

1. Go to [Vercel](https://vercel.com)
2. Import your GitHub repository
3. Configure:
   - **Framework Preset**: Create React App
   - **Root Directory**: `frontend`
   - **Build Command**: `npm run build`
   - **Output Directory**: `build`
4. Add Environment Variables:
   - `REACT_APP_API_URL`: Your Render backend URL (e.g., https://gyan-yudh-backend.onrender.com)
5. Deploy

## Step 5: Update CORS Settings

After deployment, update your backend environment variables:
- `FRONTEND_URL`: Your actual Vercel frontend URL

## Step 6: Seed Database (Optional)

To populate initial quest data:

1. Clone your repository locally
2. Navigate to backend folder: `cd backend`
3. Install dependencies: `npm install`
4. Update `.env` with your production MongoDB URI
5. Run seed script: `npm run seed`

## Step 7: Test Deployment

1. Visit your Vercel frontend URL
2. Register a new account
3. Test all features:
   - User registration and login
   - Dashboard loading with team data
   - XP earning activities
   - Leaderboard functionality
   - Coding arena features

## Environment Variables Summary

### Backend (Render)
```
MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/gyan-yudh
JWT_SECRET=your-super-secret-jwt-key-here
NODE_ENV=production
PORT=5000
FRONTEND_URL=https://your-frontend-domain.vercel.app
```

### Frontend (Vercel)
```
REACT_APP_API_URL=https://your-backend-domain.onrender.com
```

## Local Development Setup

1. **Install all dependencies**:
   ```bash
   npm run install-all
   ```

2. **Set up backend environment**:
   - Copy `backend/.env.example` to `backend/.env`
   - Update with your MongoDB URI and JWT secret

3. **Run development servers**:
   ```bash
   npm run dev
   ```
   This runs both frontend (port 3000) and backend (port 5000)

4. **Seed database** (optional):
   ```bash
   npm run seed
   ```

## Troubleshooting

### Common Issues:

1. **CORS errors**: 
   - Ensure `FRONTEND_URL` is set correctly in backend environment
   - Check that frontend is making requests to correct backend URL

2. **Database connection**: 
   - Verify MongoDB Atlas network access settings
   - Check connection string format and credentials

3. **Build failures**: 
   - Ensure Node.js version compatibility (18.x)
   - Check for missing dependencies

4. **API calls failing**: 
   - Verify `REACT_APP_API_URL` is set correctly
   - Check backend health endpoint: `/api/health`

### Monitoring:
- **Backend logs**: Check Render service logs
- **Frontend logs**: Check Vercel function logs
- **Database**: Monitor MongoDB Atlas metrics

## Production URLs

After successful deployment, you'll have:
- **Frontend**: https://your-app-name.vercel.app
- **Backend**: https://your-backend-name.onrender.com
- **API Health Check**: https://your-backend-name.onrender.com/api/health

## Custom Domains (Optional)

### Vercel (Frontend):
1. Go to project settings → Domains
2. Add your custom domain
3. Configure DNS records as instructed

### Render (Backend):
1. Go to service settings → Custom Domains
2. Add your custom domain
3. Configure DNS records as instructed

## Maintenance

- **Monitor performance**: Check response times and error rates
- **Update dependencies**: Regularly update npm packages
- **Database backups**: Set up automated backups in MongoDB Atlas
- **Security**: Rotate JWT secrets periodically
- **Feature updates**: Deploy new features through Git pushes

Your Gyan Yudh platform is now live with separate frontend and backend deployments! 🚀

## Quick Commands Reference

```bash
# Development
npm run dev                 # Run both frontend and backend
npm run frontend           # Run only frontend
npm run server            # Run only backend

# Installation
npm run install-all       # Install all dependencies
npm run install-frontend  # Install frontend dependencies
npm run install-backend   # Install backend dependencies

# Database
npm run seed              # Seed database with initial data

# Build
cd frontend && npm run build  # Build frontend for production
```