// 检查本地存储中的主题设置
const currentTheme = localStorage.getItem('theme') ? localStorage.getItem('theme') : null;

// 如果用户之前选择了主题，应用它
if (currentTheme) {
    document.documentElement.setAttribute('data-theme', currentTheme);
    if (currentTheme === 'dark') {
        document.getElementById('checkbox').checked = true;
    }
}

// 监听切换按钮的变化
const toggleSwitch = document.querySelector('.theme-switch input[type="checkbox"]');
function switchTheme(e) {
    if (e.target.checked) {
        document.documentElement.setAttribute('data-theme', 'dark');
        localStorage.setItem('theme', 'dark');
    } else {
        document.documentElement.setAttribute('data-theme', 'light');
        localStorage.setItem('theme', 'light');
    }    
}

// 添加事件监听器
if (toggleSwitch) {
    toggleSwitch.addEventListener('change', switchTheme, false);
}
