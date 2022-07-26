// document.getElementById('upload').onclick = function() {
//     let file = document.getElementById("formFile")
//     const object = await parseJsonFile(file)(file)
//     console.log(object)
// }

function importFile() {
    var importedFile = document.getElementById('formFile').files[0];

    var reader = new FileReader();
    reader.onload = function() {
      var fileContent = JSON.parse(reader.result);
      console.log(fileContent)
      // Do something with fileContent
      // document.getElementById('json-file').innerHTML = fileContent;  
    };
    reader.readAsText(importedFile); 
}

// async function parseJsonFile(file) {
//     return new Promise((resolve, reject) => {
//       const fileReader = new FileReader()
//       fileReader.onload = event => resolve(JSON.parse(event.target.result))
//       fileReader.onerror = error => reject(error)
//       fileReader.readAsText(file)
//     })
//   }  