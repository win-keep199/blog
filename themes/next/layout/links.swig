{% block content %}
  {######################}
  {### LINKS BLOCK ###}
  {######################}

    <div id="links">
        <style>

            #links{
               margin-top: 5rem;
            }

            .links-content{
                margin-top:1rem;
            }

            .link-navigation::after {
                content: " ";
                display: block;
                clear: both;
            }

            .card:nth-child(odd) {
                float: left;
            }
            .card:nth-child(even) {
                float: right;
            }

            .card {
                width: 300px;
                font-size: 1rem;
                padding: 10px 20px;
                border-radius: 4px;
                transition-duration: 0.15s;
                margin-bottom: 1rem;
                display:flex;
            }
            .card:hover {
                transform: scale(1.1);
                box-shadow: 0 2px 6px 0 rgba(0, 0, 0, 0.12), 0 0 6px 0 rgba(0, 0, 0, 0.04);
            }
            .card a {
                border:none;
            }
            .card .ava {
                width: 3rem!important;
                height: 3rem!important;
                margin:0!important;
                margin-right: 1em!important;
                border-radius:4px;

            }
            .card .card-header {
                font-style: italic;
                overflow: hidden;
                width: 236px;
            }
            .card .card-header a {
                font-style: normal;
                color: #2bbc8a;
                font-weight: bold;
                text-decoration: none;
            }
            .card .card-header a:hover {
                color: #d480aa;
                text-decoration: none;
            }
            .card .card-header .info {
                font-style:normal;
                color:#a3a3a3;
                font-size:14px;
                min-width: 0;
                text-overflow: ellipsis;
                overflow: hidden;
                white-space: nowrap;
            }
        </style>
        <div class="links-content">
            {% for link in theme.mylinks %}
                <div class="{{link.color}}"><i class="{{link.img}}" aria-hidden="true"></i> {{link.introduce}}</div>
                <div class="link-navigation">
                    {% for body in link.body %}
                            <div class="card" id="cardmain">
                                <img class="ava" src="{{ body.avatar }}"/>
                                <div class="card-header">
                                    <div>
                                        <a href="{{ body.site }}" target="_blank"> {{ body.nickname }}</a>
                                        <a href="{{ body.site }}" target="_blank"><span class="focus-links">关注</span></a>
                                    </div>
                                    <div div class="info">{{ body.info }}</div>
                                </div>
                            </div>
                    {% endfor %}
                </div>
            {% endfor %}
            {{ page.content }}
            </div>
        </div>

  {##########################}
  {### END LINKS BLOCK ###}
  {##########################}
{% endblock %}
