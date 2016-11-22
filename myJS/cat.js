function cat(){ 
  var svgContainer = d3.select("#cat").append("svg").attr("width", 400).attr("height", 400);
  var face = svgContainer.append("circle").attr("cx", 200).attr("cy", 200).attr("r", 100).attr("fill", "red");
  var ear1 = svgContainer.append("polygon").attr("points", "90,30 170,105 110,155").style("fill", "red");
  var ear2 = svgContainer.append("polygon").attr("points", "310,30 230,105 290,155").style("fill", "red");
  var leye1 = svgContainer.append("circle").attr("cx", 160).attr("cy", 170).attr("r", 20).attr("fill", "white");
  var leye2 = svgContainer.append("circle").attr("cx", 160).attr("cy", 170).attr("r", 10).attr("fill", "black");
  var reye1 = svgContainer.append("circle").attr("cx", 240).attr("cy", 170).attr("r", 20).attr("fill", "white");
  var reye2 = svgContainer.append("circle").attr("cx", 240).attr("cy", 170).attr("r", 10).attr("fill", "black");
  var nose = svgContainer.append("polygon").attr("points", "200,195 180,225 220,225").style("fill", "black");
  var mouse1 = svgContainer.append("ellipse").attr("cx", 200).attr("cy", 249).attr("rx", 60).attr("ry", 24).style("fill", "yellow");
  var mouse2 = svgContainer.append("rect").attr("x", 125).attr("y", 225).attr("width", 150).attr("height", 25).style("fill", "red");
}
cat();