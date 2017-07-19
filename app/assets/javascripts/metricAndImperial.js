$( document ).ready(function() {
  $('#height_switch').click(function() {
    var height_val = $('#height_val').html();
    if ($('#height_measurement_label').html() == "In Centimetres") {
      var new_val = convertToInches(height_val);
      doAllTheHtml(new_val, "Inches");
    } else {
      var new_val = convertToCM(height_val);
      doAllTheHtml(new_val, "Cent");
    } 
  })
})

function convertToInches(cm) {
  var result = cm / 2.54;
  return result.toFixed(2);
}

function convertToCM(inches) {
  var result = inches * 2.54;
  return result.toFixed(2);
}

function doAllTheHtml(new_val, measurement) {
  $('#height_val').html(new_val);
  if (measurement == "Inches") {
    $('#height_measurement_label').html("In Inches");
  } else {
    $('#height_measurement_label').html("In Centimetres");
  }
}