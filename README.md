# Personal Website

Welcome to my personal website, built with [Hugo](https://gohugo.io/) and the [CleanWhite](https://github.com/zhaohuabing/hugo-theme-cleanwhite) theme. This repository contains the source code and content for my personal blog and portfolio.

## 🚀 Features

- Clean, responsive design that works on all devices
- Blog functionality with categories and tags
- About page to introduce yourself
- Experience section to showcase your professional journey
- Easy content management with Markdown

## 🛠️ Prerequisites

- [Hugo](https://gohugo.io/getting-started/installing/) (Extended version recommended)
- Git
- A code editor (like VS Code)

## 🚀 Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/rodeo_hugo.git
   cd rodeo_hugo
   ```

2. **Start the development server**
   ```bash
   hugo server -D
   ```
   The site will be available at `http://localhost:1313/`

## 📁 Project Structure

```
rodeo_hugo/
├── archetypes/     # Content templates
├── content/        # Your content (blog posts, pages)
│   ├── about/      # About page content
│   ├── experience/ # Experience section
│   └── post/       # Blog posts
├── data/           # Data files
├── static/         # Static files (images, etc.)
└── themes/         # Theme files
```

## ✍️ Adding New Content

- **New Blog Post**
  ```bash
  hugo new post/my-new-post.md
  ```

- **New Experience**
  ```bash
  hugo new experience/company-name.md
  ```

## 🚀 Deployment

This site is configured for deployment on [Railway](https://railway.com/). To deploy:

1. Push your code to a Git repository (GitHub, GitLab, etc.)
2. Create a new project on Railway
3. Connect your repository
4. Railway will automatically detect the Hugo configuration and deploy the site

The site uses a `railway.toml` configuration file that:
- Uses Nixpacks to automatically install Hugo
- Builds the site with dynamic baseURL for Railway's environment
- Serves the static files with Caddy
- Includes health checks and restart policies

## 📝 License

This project is open source and available under the [MIT License](LICENSE).


## 📬 Contact

- Email: [your.email@example.com](mailto:your.email@example.com)
- Twitter: [@yourhandle](https://twitter.com/yourhandle)
- LinkedIn: [Your Name](https://linkedin.com/in/yourprofile)
