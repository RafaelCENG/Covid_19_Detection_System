viewAll()

function viewAll() {
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/viewAll",
    datatype: "json",
    //Data, that will be sent to "ajax.php".
    //data:  {name: current_user.username},
    //If result found, this function will be called.
    success: function (data) {
      let arr = data.results
      console.log(arr)
      //initialize table
      tableInit(arr)
    },
  })
}

function tableInit(tabledata) {
  //initialize table
  var table = new Tabulator("#example-table", {
    data: tabledata, //load row data from array
    layout: "fitColumns", //fit columns to width of table
    responsiveLayout: "hide", //hide columns that dont fit on the table
    addRowPos: "top", //when adding a new row, add it to the top of the table
    history: true, //allow undo and redo actions on the table
    pagination: "local", //paginate the data
    paginationSize: 7, //allow 7 rows per page of data
    paginationCounter: "rows", //display count of paginated rows in footer
    movableColumns: true, //allow column order to be changed
    // initialSort:[             //set the initial sort order of the data
    //     {column:"name", dir:"asc"},
    // ],
    columns: [
      //define the table columns
      { title: "Id ", field: "id" },
      { title: "Name", field: "name" },
      { title: "Address", field: "address" },
      { title: "Rating", field: "rating", editor: true },
      { title: "Rating Number", field: "rating_n", editor: true },
    ],
  })
  table.on("rowClick", function (e, row, cell) {
    // console.log(row.getIndex())
    id = row.getIndex()
    table.on("cellEdited", (cell) => {
      let tableRow = table.getRow(id) //return row component with index of 1
      console.log(tableRow)
      let rowData = tableRow.getData()
      editRow(rowData)
      console.log(rowData)
    })
  })
}

function editRow(rowData) {
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/editRow",
    datatype: "json",
    //Data, that will be sent to "ajax.php".
    data: rowData,
    //If result found, this function will be called.
    success: function (data) {
      console.log("Success")
    },
  })
}

document.getElementById("deleteData").onclick = function () {
  if (confirm("Are you sure you want to delete all data??") == true) {
    deleteAll()
  } else {
    alert("You pressed Cancel!")
  }
}

function deleteAll() {
  $.ajax({
    //AJAX type is "Post".
    type: "POST",
    //Data will be sent to "ajax.php".
    url: "/deleteData",
    datatype: "json",
    //If result found, this function will be called.
    success: function (data) {
      console.log("Success")
    },
  })
}
