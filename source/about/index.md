---
title: about
date: 2020-06-07 11:54:50
comments: false
layout: false
---

<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.css">
        <script src="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.min.js"></script>
        <meta charset="UTF-8">
        <title>关于</title>
        <link rel="stylesheet" type="text/css" href="/lib/about/main.css">
    </head>
    <body>
        <header>
            <div class="container">
                <h1>Posts page</h1>
                <h2>A page for Posting comments</h2>
                <a href="https://github.com/win-keep199" class="link-github">
                  <span>
                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" focusable="false">
                   <path d="M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z"></path>
                   </svg>
                   </span>
                   Star on Github</a>
            </div>
        </header>
        <nav>
            <ul>
                <li>
                    <a href="#about">About</a>
                </li>
                <li>
                    <a href="#guidelines">微语</a>
                </li>
                <li>
                    <a href="#comments">评论</a>
                </li>
            </ul>
        </nav>
        <main id="main" tabIndex="-1">
            <div class="container">
                <article id="about">
                    <section class="container">
                        <h2>介绍</h2>
                        <p>
                            一个很弱鸡的中学生,目前上初三;
                        </p>
                        <!-- <blockquote>
                        </blockquote> -->
                    </section>
                    <section class="container">
                        <h2>擅长</h2>
                        <ul>
                            <li>CSS</li>
                            <li>HTML</li>
                            <li>C++</li>
                            <li>JAVA</li>
                            <li>以上语言的拼写</li>
                        </ul>
                    </section>
                </article>
                <article id="guidelines">
                    <section class="container">
                        <style>
                            .cbp_tmtimeline>li:nth-child(odd) .cbp_tmlabel {
                            background: linear-gradient(60deg,rgba(255, 165, 150, 0.5) 5%, rgba(0, 228, 255, 0.35) 95%) 0% 0% / cover, url("https://ae01.alicdn.com/kf/H21b5f6b8496141a1979a33666e1074d9x.jpg") 0% 0% / cover !important;
                            color: white!important;
                            }
                            .cbp_tmtimeline>li .cbp_tmlabel {
                            background: linear-gradient(60deg,rgba(255, 165, 150, 0.5) 5%, rgba(0, 228, 255, 0.35) 95%) 0% 0% / cover, url("https://ae01.alicdn.com/kf/H21b5f6b8496141a1979a33666e1074d9x.jpg") 0% 0% / cover!important;
                            
                            color: white!important;
                            }
                            .cbp_tmtimeline>li:nth-child(odd) .cbp_tmlabel:after {
                            border-right-color: #FFC0BE!important
                            }
                            .cbp_tmtimeline>li .cbp_tmlabel:after {
                            border-right-color: #FFC0BE!important
                            }
                            .button {
                            background: linear-gradient(60deg,rgba(255, 165, 150, 0.5) 5%, rgba(0, 228, 255, 0.35) 95%) 0% 0% / cover, url("https://ae01.alicdn.com/kf/H21b5f6b8496141a1979a33666e1074d9x.jpg") 0% 0% / cover!important;  
                            
                            color: white!important;
                            }
                            @keyframes gradientBG {
                                0% {
                                    background-position: 0% 50%;
                                }
                                50% {
                                    background-position: 100% 50%;
                                }
                                100% {
                                    background-position: 0% 50%;
                                }
                            }
                            .balck_white01 {
                            background: #333030;
                            color: #e3dede
                            }
                        </style>
                        <h2>微语</h2>
                        <script type="text/javascript" src="https://unpkg.com/artitalk"></script>
                        <div id="artitalk_main"></div>
                        <script>
                        new Artitalk({
                            appId: 'MfSTEV6DI7iKIhtXuBsF7NaI-MdYXbMMI',
                            appKey: '3tQSTCos9iB8vjrrrUysfR6B',
                        })
                        </script>
                        
                    </section>
                </article>
                <article id="comments">
                    <section class="container">
                            <h2>评论</h2>
                            <div id="gitalk-container"></div> 
                            <script>
                                var gitalk = new Gitalk({
                                    clientID: '1ee0b4bca1a839f1552b',
                                    clientSecret: '8a36fe8ae2fbfe8170394a1afb50633ad8ccc7b0',
                                    repo: 'win-keep199.github.io',
                                    owner: 'win-keep199',
                                    admin: 'win-keep199',
                                    id: location.pathname,      // Ensure uniqueness and length less than 50{{ page.title }}
                                    distractionFreeMode: 'true'  // Facebook-like distraction free mode
                                    })

                                    gitalk.render('gitalk-container')
                            </script>
                    </section>
                </article>
            </div>
        </main>
        <aside class="profile" aria-labelledby="profile-title">
            <div class="container">
                <h4 id="profile-title">Currently Posts page</h4>
                <ul>
                    <li class="profile-title">
                        <span>Title:</span>
                        <span>介绍</span></li>
                    <li class="profile-author">
                        <span>Author:</span>
                        <span>Acacia</span></li>
                    <li class="profile-website">
                        <span>Website:</span>
                        <span>
                           <a href="https://w-k.xyz/">w-k.xyz</a>
                        </span>
                    </li>
                </ul>
            </div>
        </aside>
        <footer class="page-footer">
            <div class="container">
                <ul>
                    <li>
                        <a href="https://space.bilibili.com/22119869" class="link-twittercontact">Contact on BiliBili</a>
                    </li>
                    <li>
                        <a href="https://github.com/win-keep199" class="link-github">
                           <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" focusable="false">
                           <path d="M32 12.408l-11.056-1.607-4.944-10.018-4.944 10.018-11.056 1.607 8 7.798-1.889 11.011 9.889-5.199 9.889 5.199-1.889-11.011 8-7.798z"></path>
                          </svg>
                          Star on Github</a>
                    </li>
                </ul>
                <p>
                    Contributors retain copyright of all graphics used, and styles are available under
                    <a href="https://creativecommons.org/licenses/by-nc-sa/3.0/">CC BY-NC-SA</a>
                </p>
            </div>
        </footer>
    </body>
</html>