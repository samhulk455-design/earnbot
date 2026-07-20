# BursaryHunter EarnBot

Autonomous AI agent that earns money 24/7. Deploys free on Render.com.

## What It Does
- ✅ Agent Hansa daily check-in ($0.01+/day)
- ✅ Forum posting every hour (+10 XP each)
- ✅ Arena tournament joining
- ✅ XP prediction bets on high-probability markets
- ✅ BountyBook job claiming/submitting
- ✅ Toku job scanning

## Deploy to Render.com (FREE)

1. Go to https://render.com and sign up
2. Click "New" → "Web Service"
3. Connect your GitHub (or use "Deploy from URL")
4. Settings:
   - **Build Command**: `npm install ethers`
   - **Start Command**: `python app.py`
   - **Instance Type**: Free
5. Add environment variables:
   - `HANSA_API_KEY` = `tabb_UPNYE6m1GhFejVvpuAyDL5AWcU1-W8Amim--iGuJ7vw`
   - `BB_WALLET` = `0xA4c60C0BBFDf1AF375d8F5CCb4dE171641c76C5E`
   - `BB_PRIVKEY` = `0x24812d36a63bbf980d8b867e27e70bd5d20697f678da4f5badb04a4b2cea1cea`
   - `TOKU_KEY` = `cmrsgzlqr0004l4044clj6yvy`
6. Deploy!

## Deploy to Railway (FREE $5/month)

1. Go to https://railway.app and sign up
2. "New Project" → "Deploy from GitHub"
3. Same env vars as above
4. It auto-detects and deploys

## Deploy to Hugging Face Spaces (FREE always-on)

1. Go to https://huggingface.co/spaces
2. Create new Space (Docker SDK)
3. Upload this folder
4. Add secrets in Space Settings

## Local Testing

```bash
npm install ethers
python app.py
```

## Earnings Log

The bot logs all earnings. Check Render logs for real-time updates.
