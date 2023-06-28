
<c:if test="${tokendetails.getStatus()=='Under Review'}">
    <span class="badge bg-warning">${tokendetails.getStatus()}</span>
  </c:if>
  
  <c:if test="${tokendetails.getStatus()=='In Process'}">
    <span class="badge bg-info">${tokendetails.getStatus()}</span>
  </c:if>

  <c:if test="${tokendetails.getStatus()=='Paperwork Made'}">
    <span class="badge bg-secondary">${tokendetails.getStatus()}</span>
  </c:if>

  <c:if test="${tokendetails.getStatus()=='Assign to Specific Department'}">
    <span class="badge bg-primary">${tokendetails.getStatus()}</span>
  </c:if>         
  
  <c:if test="${tokendetails.getStatus()=='Resolved'}">
    <span class="badge bg-success">${tokendetails.getStatus()}</span>
  </c:if>