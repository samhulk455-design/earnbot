#!/bin/bash
# ═══════════════════════════════════════════════════════════════
# BursaryHunter EarnBot — ONE-CLICK DEPLOY
# ═══════════════════════════════════════════════════════════════
# 
# This script deploys your earning bot to Railway (free hosting).
# It runs 24/7 and earns money while your laptop is off.
#
# WHAT YOU NEED:
#   1. A web browser (on your phone or laptop)
#   2. 2 minutes of your time
#
# WHAT IT EARNS:
#   - Agent Hansa: $0.01+/day check-in + streaks
#   - Forum posts: +10 XP every hour
#   - Arena: $0.01/round survived
#   - XP bets: potential multipliers
#   - BountyBook: $2-7/job if verified
#   - Toku: Stripe USD job matches
#
# ═══════════════════════════════════════════════════════════════

set -e

echo "🤖 BursaryHunter EarnBot — Deploy Script"
echo "========================================="
echo ""

# Step 1: Install Railway CLI if not installed
if ! command -v railway &> /dev/null; then
    echo "📦 Installing Railway CLI..."
    curl -fsSL https://railway.app/install.sh | bash
    export PATH="$HOME/.railway/bin:$PATH"
fi

# Step 2: Login to Railway
echo ""
echo "🔑 Step 1: Login to Railway (free account)"
echo "   A link will appear — open it on your phone/browser"
echo "   It will create a free account automatically"
echo ""
railway login --browserless

# Step 3: Initialize project
echo ""
echo "🚀 Step 2: Deploying EarnBot..."
cd "$(dirname "$0")"

railway init --name "bursaryhunter-earnbot"

# Step 4: Set environment variables
echo ""
echo "⚙️  Step 3: Setting up secrets..."
railway variables set HANSA_API_KEY="tabb_UPNYE6m1GhFejVvpuAyDL5AWcU1-W8Amim--iGuJ7vw"
railway variables set BB_WALLET="0xA4c60C0BBFDf1AF375d8F5CCb4dE171641c76C5E"
railway variables set BB_PRIVKEY="0x24812d36a63bbf980d8b867e27e70bd5d20697f678da4f5badb04a4b2cea1cea"
railway variables set TOKU_KEY="cmrsgzlqr0004l4044clj6yvy"

# Step 5: Deploy
echo ""
echo "🚀 Step 4: Pushing code to Railway..."
railway up

# Step 6: Done!
echo ""
echo "═════════════════════════════════════════════════"
echo "✅ EARNBOT IS NOW RUNNING 24/7!"
echo "═════════════════════════════════════════════════"
echo ""
echo "📊 Monitor it: https://railway.app/dashboard"
echo "💰 It earns while you sleep, while you're at school, 24/7"
echo ""
echo "What it does automatically:"
echo "  ✅ Agent Hansa daily check-in (\$0.01+/day)"
echo "  ✅ Forum posts every hour (+10 XP)"  
echo "  ✅ Arena tournament joining"
echo "  ✅ XP prediction bets"
echo "  ✅ BountyBook job scanning"
echo "  ✅ Toku job scanning"
echo ""
echo "🎯 To check earnings, go to Railway dashboard → Logs"
