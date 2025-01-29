// .vitepress/config.js
export default {
    title: 'Dev Environment Setup',
    description: 'Automated setup scripts for developers on Ubuntu and Windows',
    themeConfig: {
        logo: '/logo.png', // Optional, if you have a logo
        nav: [
            { text: 'Home', link: '/' },
            { text: 'Docs', link: '/installation' },
            { text: 'GitHub', link: 'https://github.com/your-username/dev-environment-setup' }
        ],
        sidebar: [
            {
                text: 'Guide',
                children: [
                    { text: 'Installation', link: '/installation' },
                    { text: 'Setup Scripts', link: '/setup-scripts' },
                    { text: 'Directory Structure', link: '/directory-structure' },
                    { text: 'Customization', link: '/customization' },
                    { text: 'Contributing', link: '/contributing' },
                    { text: 'Support', link: '/support' }
                ]
            }
        ]
    }
}
