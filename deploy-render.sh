#!/bin/bash
# ═══════════════════════════════════════════════════════════════
# BursaryHunter EarnBot — DEPLOY TO RENDER (Free)
# ═══════════════════════════════════════════════════════════════
# 
# You already have Render.com open! Here's how to deploy:
#
# OPTION A: FASTEST — GitHub + Render (5 minutes)
# ═══════════════════════════════════════════════════════════════
#
# 1. Go to https://github.com/new — create a repo called "earnbot"
#    (make it PUBLIC so Render can see it for free)
#    Don't initialize with README
#
# 2. Then open your terminal and run:
#
set -e

cd /home/user/earnbot

# Init git repo
git init
git config user.name "samhulksoa"
git config user.email "samhulk455@gmail.com"
git add -A
git commit -m "BursaryHunter EarnBot - initial deploy"

echo ""
echo "═══════════════════════════════════════════════════════════"
echo "⚡ NOW RUN THESE COMMANDS IN YOUR TERMINAL:"
echo "═══════════════════════════════════════════════════════════"
echo ""
echo "  cd earnbot"
echo "  git remote add origin https://github.com/YOUR_USERNAME/earnbot.git"
echo "  git push -u origin main"
echo ""
echo "Then on Render.com:"
echo "  1. Click 'New +' → 'Background Worker'"
echo "  2. Connect your GitHub repo"
echo "  3. Select the 'earnbot' repo"
echo "  4. It auto-detects Docker"
echo "  5. Add Environment Variables:"
echo "     HANSA_API_KEY  = tabb_UPNYE6m1GhFejVvpuAyDL5AWcU1-W8Amim--iGuJ7vw"
echo "     BB_WALLET      = 0xA4c60C0BBFDf1AF375d8F5CCb4dE171641c76C5E"
echo "     BB_PRIVKEY     = 0x24812d36a63bbf980d8b867e27e70bd5d20697f678da4f5badb04a4b2cea1cea"
echo "     TOKU_KEY       = cmrsgzlqr0004l4044clj6yvy"
echo "  6. Click 'Create Background Worker'"
echo ""
echo "That's it! Bot runs 24/7 for free."
echo ""
echo "═══════════════════════════════════════════════════════════"
echo "OPTION B: NO GITHUB — Manual Upload"
echo "═══════════════════════════════════════════════════════════"
echo ""
echo "1. On Render, click 'New +' → 'Background Worker'"
echo "2. Choose 'Deploy an existing image from a registry'"
echo "   (We'd need to push to Docker Hub first)"
echo ""
echo "═══════════════════════════════════════════════════════════"
