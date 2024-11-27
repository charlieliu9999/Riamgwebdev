// 主题管理器
const ThemeManager = {
    // 获取当前主题
    getCurrentTheme() {
        return localStorage.getItem('theme') || this.getSystemTheme();
    },

    // 获取系统主题
    getSystemTheme() {
        return window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light';
    },

    // 设置主题
    setTheme(theme) {
        document.documentElement.setAttribute('data-theme', theme);
        localStorage.setItem('theme', theme);

        // 触发主题变更事件
        window.dispatchEvent(new CustomEvent('themechange', { detail: { theme } }));
    },

    // 切换主题
    toggleTheme() {
        const currentTheme = this.getCurrentTheme();
        const newTheme = currentTheme === 'light' ? 'dark' : 'light';
        this.setTheme(newTheme);
        return newTheme;
    },

    // 初始化主题
    init() {
        // 设置初始主题
        const savedTheme = this.getCurrentTheme();
        this.setTheme(savedTheme);

        // 监听系统主题变化
        const mediaQuery = window.matchMedia('(prefers-color-scheme: dark)');
        mediaQuery.addEventListener('change', (e) => {
            if (!localStorage.getItem('theme')) {
                const theme = e.matches ? 'dark' : 'light';
                this.setTheme(theme);
            }
        });

        // 添加切换按钮点击事件
        const themeSwitch = document.getElementById('theme-switch');
        if (themeSwitch) {
            themeSwitch.addEventListener('click', () => {
                this.toggleTheme();
            });

            // 添加键盘支持
            themeSwitch.addEventListener('keydown', (e) => {
                if (e.key === 'Enter' || e.key === ' ') {
                    e.preventDefault();
                    this.toggleTheme();
                }
            });
        }
    }
};

// 页面加载完成后初始化
document.addEventListener('DOMContentLoaded', () => {
    ThemeManager.init();
});
