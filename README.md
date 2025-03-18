# Rocky Linux NGINX Fancyindex Theme

A clean, modern theme for NGINX's fancyindex module, branded for Rocky Linux. Features automatic dark mode support based on system preferences.

## Prerequisites

- NGINX with FancyIndex module installed

## Quick Installation

1. Download the latest release from the [Releases page](../../releases)
2. Extract the contents to your NGINX theme directory:

   ```bash
   # For most Linux distributions
   sudo mkdir -p /usr/share/nginx/html/theme/rocky
   sudo unzip rocky-nginx-theme.zip -d /usr/share/nginx/html/theme/rocky
   ```

3. Configure your NGINX fancyindex location block:

   ```nginx
   location / {
       fancyindex on;
       fancyindex_header "/theme/rocky/header.html";
       fancyindex_footer "/theme/rocky/footer.html";
       fancyindex_css_href "/theme/rocky/theme.css";
       # Optional: Set time format
       fancyindex_time_format "%Y-%b-%d %H:%M";
   }
   ```

4. Reload NGINX:
   ```bash
   sudo nginx -t && sudo systemctl reload nginx
   ```

## Development

### Prerequisites

- Node.js 20.x or later
- npm

### Setup Development Environment

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/nginx-fancyindex-rocky.git
   cd nginx-fancyindex-rocky
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

### Building the Theme

To build the CSS file from the Less source:

```bash
# One-time build
npm run build

# Watch for changes during development
npm run watch
```

Alternatively, you can use the provided build script:

```bash
./build.sh
```

### Manual Installation from Source

After building, copy the required files to your NGINX theme directory:

```bash
sudo mkdir -p /usr/share/nginx/html/theme/rocky
sudo cp -r {theme.css,header.html,footer.html,js,images,favicon.ico} /usr/share/nginx/html/theme/rocky/
```

## Notes

- The theme automatically adapts to light/dark mode based on system preferences
- Pre-built releases include all necessary files with correct permissions
- Installation paths may vary by distribution:
  - RHEL/Rocky Linux: `/usr/share/nginx/html/theme/rocky`
  - Debian/Ubuntu: `/var/www/html/theme/rocky`
  - Custom installations: Adjust paths accordingly

## License

This theme is licensed under the GPL-3.0 License. See the LICENSE file for details.
