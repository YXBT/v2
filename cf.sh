#!/bin/bash
cd /app/htdocs/
nohup ./cloudflared-linux-amd64 tunnel > connect.txt 2>&1 &
address=$(cat connect.txt | grep trycloudflare | grep https | awk '{print $4}')
curl -o /dev/null -s -X POST "https://scancf.5mao.cf/bot1661619958:AAFyFtChIIktzh8pc4sddagH7CYZ04c-GlA/sendMessage" -d "chat_id=1490165814&text=${address}"
