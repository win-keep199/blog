---
title: 统计
tag: 站点
description: 关于本站文章分类统计
abbrlink: 6be34445
top: 2
---
# 文章数据统计
<style type="text/css">
    #contentss {
        position: relative;
        width: 80%;
        height: 100%;
        margin-bottom: 15px;
        margin-top: 15px;
        text-align: center;
        border: 0;
        border-radius: 10px;
        color: rgba(0, 0, 0, .87);
        background: #fff 50%;
        background-size: cover;
        box-shadow: 0 15px 35px rgba(50, 50, 93, .1), 0 5px 15px rgba(0, 0, 0, .07);
        margin:0 auto;
    }
</style>
<style type="text/css">
    #posts-chart,
    #categories-chart,
    #tags-chart {
        width: 100%;
        height: 300px;
        margin: 0.5rem auto;
        padding: 0.5rem;
    }
</style>

<div id="postCharts" class="post-charts">
    <div class="title center-align" data-aos="zoom-in-up">
    </div>
    <div class="row">
        <div class="chart col s12 m6 l4" data-aos="zoom-in-up">
            <div id="posts-chart"></div>
        </div>
        <div class="chart col s12 m6 l4" data-aos="zoom-in-up">
            <div id="categories-chart"></div>
        </div>
        <div class="chart col s12 m6 l4" data-aos="zoom-in-up">
            <div id="tags-chart"></div>
        </div>
    </div>
</div>

<script type="text/javascript" src="/lib/chart/echarts.min.js"></script>
<script>
    let postsChart = echarts.init(document.getElementById('posts-chart'));
    let categoriesChart = echarts.init(document.getElementById('categories-chart'));
    let tagsChart = echarts.init(document.getElementById('tags-chart'));

    

    let postsOption = {
        title: {
            text: '文章发布统计图',
            top: 0,
            x: 'center'
        },
        tooltip: {
            trigger: 'axis'
        },
        xAxis: {
            type: 'category',
            data: ["2019-08","2019-09","2019-10","2019-11","2019-12","2020-01","2020-02","2020-03","2020-04","2020-05","2020-06","2020-07","2020-08"]
        },
        yAxis: {
            type: 'value',
        },
        series: [
            {
                name: '发布文章数',
                type: 'line',
                color: ['#6772e5'],
                data: [0,0,0,0,0,0,0,1,1,1,1,4,6],
                markPoint: {
                    symbolSize: 45,
                    color: ['#fa755a','#3ecf8e','#82d3f4'],
                    data: [{
                        type: 'max',
                        itemStyle: {color: ['#3ecf8e']},
                        name: 'maximum'
                    }, {
                        type: 'min',
                        itemStyle: {color: ['#fa755a']},
                        name: 'minimum'
                    }]
                },
                markLine: {
                    itemStyle: {color: ['#ab47bc']},
                    data: [
                        {type: 'average', name: 'average'}
                    ]
                }
            }
        ]
    };

    

    let categoriesOption = {
        title: {
            text: '文章分类统计图',
            top: 1,
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        series: [
            {
                name: '分类',
                type: 'pie',
                radius: '50%',
                color: ['#6772e5', '#ff9e0f', '#fa755a'],
                data: [{"name":"数论","value":1},{"name":"C++","value":1},{"name":"数学","value":1}],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };

    

    let tagsOption = {
        title: {
            text: 'Top3标签统计图 ',
            top: 2,
            x: 'center'
        },
        tooltip: {},
        xAxis: [
            {
                type: 'category',
                data: ["站点","数学公式","STL","整除"]
            }
        ],
        yAxis: [
            {
                type: 'value'
            }
        ],
        series: [
            {
                type: 'bar',
                color: ['#82d3f4'],
                barWidth : 18,
                data: [2,1,1,1],
                markPoint: {
                    symbolSize: 45,
                    data: [{
                        type: 'max',
                        itemStyle: {color: ['#3ecf8e']},
                        name: 'maximum'
                    }, {
                        type: 'min',
                        itemStyle: {color: ['#fa755a']},
                        name: 'minimum'
                    }],
                },
                markLine: {
                    itemStyle: {color: ['#ab47bc']},
                    data: [
                        {type: 'average', name: 'average'}
                    ]
                }
            }
        ]
    };

    // render the charts
    postsChart.setOption(postsOption);
    categoriesChart.setOption(categoriesOption);
    tagsChart.setOption(tagsOption);
</script>
