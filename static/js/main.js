// 等待 DOM 加载完成
document.addEventListener('DOMContentLoaded', function() {
    // 初始化导航菜单
    initMobileMenu();
    
    // 初始化搜索功能
    initSearch();
    
    // 初始化图表（如果存在）
    initCharts();
});

// 移动端菜单
function initMobileMenu() {
    const menuToggle = document.querySelector('.menu-toggle');
    const mobileMenu = document.querySelector('.mobile-menu');
    
    if (menuToggle && mobileMenu) {
        menuToggle.addEventListener('click', function() {
            mobileMenu.classList.toggle('active');
            menuToggle.classList.toggle('active');
        });
    }
}

// 搜索功能
function initSearch() {
    const searchForm = document.querySelector('.search-form');
    if (searchForm) {
        searchForm.addEventListener('submit', function(e) {
            e.preventDefault();
            const query = this.querySelector('input').value;
            // 实现搜索逻辑
            console.log('Search query:', query);
        });
    }
}

// 图表初始化
function initCharts() {
    // 检查是否有图表容器
    const charts = document.querySelectorAll('[data-chart]');
    if (charts.length > 0 && typeof Chart !== 'undefined') {
        charts.forEach(container => {
            const type = container.dataset.chart;
            const ctx = container.getContext('2d');
            
            // 根据类型初始化不同的图表
            switch(type) {
                case 'pie':
                    initPieChart(ctx);
                    break;
                case 'line':
                    initLineChart(ctx);
                    break;
                case 'bar':
                    initBarChart(ctx);
                    break;
            }
        });
    }
}

// 饼图初始化
function initPieChart(ctx) {
    if (ctx) {
        new Chart(ctx, {
            type: 'pie',
            data: {
                labels: ['类型A', '类型B', '类型C'],
                datasets: [{
                    data: [30, 40, 30],
                    backgroundColor: [
                        '#0056b3',
                        '#6c757d',
                        '#28a745'
                    ]
                }]
            },
            options: {
                responsive: true
            }
        });
    }
}

// 折线图初始化
function initLineChart(ctx) {
    if (ctx) {
        new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['一月', '二月', '三月', '四月', '五月', '六月'],
                datasets: [{
                    label: '实施进度',
                    data: [12, 19, 3, 5, 2, 3],
                    borderColor: '#0056b3',
                    tension: 0.1
                }]
            },
            options: {
                responsive: true
            }
        });
    }
}

// 柱状图初始化
function initBarChart(ctx) {
    if (ctx) {
        new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['一月', '二月', '三月', '四月', '五月', '六月'],
                datasets: [{
                    label: '实施数量',
                    data: [12, 19, 3, 5, 2, 3],
                    backgroundColor: '#0056b3'
                }]
            },
            options: {
                responsive: true
            }
        });
    }
}
