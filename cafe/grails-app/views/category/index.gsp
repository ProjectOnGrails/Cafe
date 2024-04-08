<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <asset:stylesheet src="index.css"/>

    </head>
    <body>

    <g:render template="Shared/message"/>
    <div id="content" role="main">
        <div class="container">
            <section class="row">

                <a href="#list-category" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
                <div class="nav" role="navigation">
                    <ul>
                        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                    </ul>
                </div>
            </section>
            <section class="row">
                <div id="list-category" class="col-12 content scaffold-list" role="main">
                    <h1><g:message code="default.list.label" args="[entityName]" /></h1>

                    <f:table collection="${categoryList}" />

                    <g:if test="${categoryCount > params.int('max')}">
                    <div class="pagination">
                        <g:paginate total="${categoryCount ?: 0}" />
                    </div>
                    </g:if>
                </div>

                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <table class="table-bordered table-hover dt-responsive">
                                <thead>
                                <tr>
                                    <th>Country</th>
                                    <th>Languages</th>
                                    <th>Population</th>
                                    <th>Median Age</th>
                                    <th>Area (Km²)</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Argentina</td>
                                    <td>Spanish (official), English, Italian, German, French</td>
                                    <td>41,803,125</td>
                                    <td>31.3</td>
                                    <td>2,780,387</td>
                                </tr>
                                <tr>
                                    <td>Australia</td>
                                    <td>English 79%, native and other languages</td>
                                    <td>23,630,169</td>
                                    <td>37.3</td>
                                    <td>7,739,983</td>
                                </tr>
                                <tr>
                                    <td>Greece</td>
                                    <td>Greek 99% (official), English, French</td>
                                    <td>11,128,404</td>
                                    <td>43.2</td>
                                    <td>131,956</td>
                                </tr>
                                <tr>
                                    <td>Luxembourg</td>
                                    <td>Luxermbourgish (national) French, German (both administrative)</td>
                                    <td>536,761</td>
                                    <td>39.1</td>
                                    <td>2,586</td>
                                </tr>
                                <tr>
                                    <td>Russia</td>
                                    <td>Russian, others</td>
                                    <td>142,467,651</td>
                                    <td>38.4</td>
                                    <td>17,076,310</td>
                                </tr>
                                <tr>
                                    <td>Sweden</td>
                                    <td>Swedish, small Sami- and Finnish-speaking minorities</td>
                                    <td>9,631,261</td>
                                    <td>41.1</td>
                                    <td>449,954</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>





    </body>
</html>