<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
    
    <div class="page-header">
      <h1><small><fmt:message key='title.equipmentType' /></small></h1>
    </div>
    
    <div>
        <a href="${linkTo[EquipmentTypeController].form}" class="btn btn-primary active" role="button">
            <fmt:message key="link.text.add" />
        </a>
    </div>
       
    <c:if test='${errors["equipmentType"] != null}' >
        <div class="alert alert-danger">
          <strong>${errors["equipmentType"][0]}</strong>
        </div>
    </c:if>   
    
	<table class="table table-striped table-condensed"> 
		<tr>
			<td><fmt:message key="equipmentType.id" /></td>
			<td><fmt:message key="equipmentType.name" /></td>
			<td></td>
			<td></td>
		</tr>
		<c:forEach items="${equipmentTypes }" var="equipmentType">
			<tr>
				<td>${equipmentType.id }</td>
				<td>${equipmentType.name }</td>
				<td>
                    <a href="${linkTo[EquipmentTypeController].form(equipmentType.id) }" title="<fmt:message key="label.update" />">
                        <span class="glyphicon glyphicon-edit"></span>
					</a>
				</td>
				<td>
                    <a href="${linkTo[EquipmentTypeController].delete(equipmentType) }" title="<fmt:message key="label.remove" />"> 
                        <span class="glyphicon glyphicon-remove"></span>
					</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>