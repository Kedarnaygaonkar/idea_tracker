# 🌟 Idea Evolution Tracker — Yugas Edition

Track how ideas evolve across time through the lens of the four Hindu cosmic ages (Yugas).

## 🚀 Live Demo
- **Frontend**: https://idea-tracker-4m52.vercel.app
- **Backend API**: https://idea-tracker-apdi.onrender.com

## 📁 Project Structure

```
idea_tracker/
├── backend/               # Flask REST API
│   ├── api.py             # Main API entry point (2000+ lines, 30+ endpoints)
│   ├── models/            # IdeaNode, InfluenceEdge data models
│   ├── services/          # MongoDB, AI, Yuga generation services
│   ├── scripts/           # Data generation & maintenance scripts
│   ├── data_structures/   # Interval Tree, Segment Tree, Lineage Graph
│   └── tests/             # Backend unit tests
├── frontend/              # React + Vite + TailwindCSS
│   ├── src/
│   │   ├── components/    # UI components
│   │   ├── pages/         # Login, Yugas, EvolutionTracker pages
│   │   └── lib/           # API client, utilities
│   └── vercel.json        # Vercel SPA routing config
├── data/                  # Fallback JSON data store
├── documentation/         # Project guides and docs
├── scripts/               # Setup and migration scripts
├── tests/                 # Root-level test files
├── requirements.txt       # Python dependencies
├── .env.example           # Environment variable template
└── start.bat              # Local dev launcher (Windows)
```

## ⚙️ Local Setup

### 1. Backend
```bash
# Install dependencies
pip install -r requirements.txt

# Copy and fill in environment variables
copy .env.example .env

# Start backend
python -m backend.api
```

### 2. Frontend
```bash
cd frontend
npm install
npm run dev
```

## 🔐 Environment Variables
Copy `.env.example` to `.env` and fill in:
```
GEMINI_API_KEY=...
MONGODB_ATLAS_URI=...
OPENAI_API_KEY=...
```

## 🚢 Deployment
- **Frontend** → [Vercel](https://vercel.com) (Root: `frontend/`)
- **Backend** → [Render](https://render.com) (Start: `gunicorn backend.api:app`)
