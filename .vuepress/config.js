import { defaultTheme } from 'vuepress'
import { searchPlugin } from '@vuepress/plugin-search'
import { defineUserConfig } from 'vuepress'


export default defineUserConfig({
    lang: 'en-US',
    title: 'Jenkins Build',
    description: 'The Mint System Jenkins development environment.',
    head: [
        ['link', { rel: 'icon', href: '/icon.png' }]
    ],
    theme: defaultTheme({
        logo: '/icon.png',
        repo: 'mint-system/jenkins-build',
        docsBranch: 'main',
        editLink: true,
        navbar: [
            { text: 'Home', link: '/' },
            { text: 'Help', link: '/task' },
            { text: 'Mint System', link: 'https://www.mint-system.ch' }
        ],
    }),
    plugins: [
        searchPlugin({
            maxSuggestions: 10
        }),
    ],
})
