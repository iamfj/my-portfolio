/**
 * @type {import('next').NextConfig}
 */
const nextConfig = {
  pageExtensions: ["tsx"],
  experimental: {
    outputStandalone: true,
  },
};

module.exports = nextConfig;
