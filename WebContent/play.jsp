<jsp:include page="nav.jsp"/>
	<div data-role="content" id="page1"> 	
      <table id="tableContent" data-role="table" data-filter="true" data-mode="columntoggle" class="ui-responsive table-stroke">
         {% set count = {'value': 0} %}
         <thead>
             <tr>
             {% for header in headers %}
                 <th data-priority="{{ count.value + 1 }}">{{ header[0] }}</th>
                 {% if count.update({'value': count.value + 1}) %} {% endif %}
             {% endfor %}
             </tr>
         </thead>
         <tbody>
             {% for entry in entries %}
             <tr>
                 {% for i in range(count.value) %}
                     <td>{{ entry[i] }}</td>
                 {% endfor %}  
             </tr>
             {% endfor %}
         </tbody>
	</div>