import { defineConfig } from 'vitepress'

export default defineConfig({
    title: "Dev Environment Setup",
    description: "Automated development environment setup scripts for multiple platforms",
    themeConfig: {
        nav: [
            { text: 'Home', link: '/' },
            { text: 'Guide', link: '/guide/getting-started' },
            { text: 'GitHub', link: 'https://github.com/chimfwembeC/dev-environment-setup' }
        ],
        sidebar: [
            {
                text: 'Introduction',
                items: [
                    { text: 'Getting Started', link: '/guide/getting-started' },
                    { text: 'Features', link: '/guide/features' }
                ]
            },
            {
                text: 'Installation Guides',
                items: [
                    { text: 'Ubuntu Setup', link: '/installation/ubuntu' },
                    { text: 'Windows Setup', link: '/installation/windows' },
                    { text: 'macOS Setup', link: '/installation/macos' }
                ]
            },
            {
                text: 'Usage',
                items: [
                    { text: 'Directory Structure', link: '/usage/directory-structure' },
                    { text: 'Running Scripts', link: '/usage/running-scripts' },
                    { text: 'Verification', link: '/usage/verification' }
                ]
            },
            {
                text: 'Customization',
                items: [
                    { text: 'Adding New Tools', link: '/customization/adding-tools' },
                    { text: 'Script Modifications', link: '/customization/script-modifications' }
                ]
            },
            {
                text: 'Contributing',
                items: [
                    { text: 'Contribution Guide', link: '/contributing/guide' },
                    { text: 'License', link: '/contributing/license' }
                ]
            }
        ],
        search: {
            provider: 'local'
        },
        footer: {
            message: 'Released under the MIT License.',
            copyright: 'Copyright © 2024-present'
        }
    }
})