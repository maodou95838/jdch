//刷新列表
  function reloadDataGrid(divid){
	  $("#"+divid).datagrid('loadData()');
 }

//列表 加载 function
function __loadList(id, title, pars,columns){
	// alert(pars.cxajbs);
    try {
		var  url=pars.url;
		 
        var fieldid = "ajbs";
        var pageSize = 10;
        var height = 262;
        var width = (document.body.clientWidth) - 10;
        var rownumbers = true;
        
        if(!!columns){
        }else{
         alert("系统错误,请与管理员联系");
            return false;
        }
     var sql="";
      if (!!pars.sql) {
            sql = pars.sql;
        }
        if (!!pars.fieldid) {
            fieldid = pars.fieldid;
        }
        if (!!pars.pageSize) {
            pageSize = pars.pageSize;
        }
        if (!!pars.height) {
            height = pars.height;
        }
        if (!!pars.width) {
            width = pars.width;
        }
        if (!!pars.rownumbers) {
            if (pars.rownumbers == 'false') {
                rownumbers = false;
            }
        }
        var pagination = true;
        if (!!pars.pagination) {
            if (pars.pagination == 'false') {
                pagination = false;
            }
        }
       var  singleSelect= true;
        if (!!pars.singleSelect) {
            if (pars.singleSelect == 'false') {
                singleSelect = false;
            }
        }
        var LoadSuccessClickRow = false;
        if (!!pars.LoadSuccessClickRow) {
            if (pars.LoadSuccessClickRow == 'false') {
                LoadSuccessClickRow = false;
            }else{
             LoadSuccessClickRow = true;
            }
        }
		var pageNumber=1;
		if(!!pars.pageNumber){
			pageNumber=pars.pageNumber;
		}
		var sort="";
		var orderby="";
        var obj = {
            id: id,
            title: title,
            url: pars.url,
            column:columns,
            sql: sql,
            orderby: orderby,
            fieldid: fieldid,
            pageSize: pageSize,
            width: width,
            height: height,
            rownumbers: rownumbers,
            pagination: pagination,
            LoadSuccessClickRow: LoadSuccessClickRow,
			pageNumber:pageNumber,
			singleSelect:singleSelect,
            sort: sort        
        };
      //  debugwindow(JSON.stringify(obj));
        wsgllistview._loadList(obj,pars);
    } 
    catch (e) {
        alert("__loadList=" + e)
    }
}

var wsgllistview = {
    _loadList: function(obj,pars){
        //debugwindow(JSON.stringify(obj));
        var c = [];
        c.push(obj.column);
        //debugwindow(JSON.stringify(c))
        //alert(obj.rownumbers);
        // alert(obj.title);
        $('#' + obj.id).datagrid({
            title: obj.title,
            width: obj.width,
            height: obj.height,
            nowrap: false,
            striped: true,
            url: obj.url,
            sortName: obj.orderby,
            sortOrder: obj.sort,
            idField: obj.fieldid,
            columns: c,
            pagination: obj.pagination,
            rownumbers: obj.rownumbers,
            singleSelect: obj.singleSelect,
            remoteSort: false,
			pageNumber:obj.pageNumber,
            pageSize: obj.pageSize,
            loadMsg: '数据加载中，请稍后……',
            queryParams: {
                sql: obj.sql,
                gridid: obj.id				 
            },
            onClickRow: function(){
                getSelected(obj.id);//调用页面的函数
            },
            onLoadSuccess: function(){
                $('#' + obj.id + '').datagrid('clearSelections');
                if (obj.LoadSuccessClickRow) {
                 $('#' + obj.id + '').datagrid('selectRow', 0);
                    getSelected(obj.id);
                }
                setcxtj(obj.id,pars);
            }
        });
    }
}
function  setcxtj(divid,pars){

}
 