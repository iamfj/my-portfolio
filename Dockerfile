FROM node:16-alpine
WORKDIR /app

ENV NODE_ENV production

RUN addgroup -g 1001 -S nodejs
RUN adduser -S nextjs -u 1001

COPY --chown=nextjs:nodejs ./public /app/public
COPY --chown=nextjs:nodejs ./.next/standalone /app
COPY --chown=nextjs:nodejs ./.next/static /app/.next/static

USER nextjs

EXPOSE 3000

ENV PORT 3000

CMD ["node", "server.js"]
