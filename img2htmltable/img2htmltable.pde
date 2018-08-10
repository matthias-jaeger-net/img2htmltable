void setup() {
  size(200, 200);

  PImage img = loadImage("data/image/image.jpg");
  image(img, 0, 0, width, height);

  PrintWriter output = createWriter("out/image.html"); 

  // Load HTML template file
  String[] html = loadStrings("data/template/template.html");
  for (String line : html) {
    output.println(line);
  }

  output.println("<table>");

  // Read image and write HTML
  loadPixels(); 
  
  for (int y = 0; y < height; y++) {

    output.println("<tr>");

    for (int x = 0; x < width; x++) {
      int loc = x + y * height;
      float r = red(pixels[loc]);
      float g = green(pixels[loc]);
      float b = blue(pixels[loc]);
      output.println("<td style='background-color: rgb(" + r + ", " + g + ", " + b + ");'>&nbsp;</td>");
    }
    
    output.println("</tr>");
  }
  updatePixels();

  // Finishes the HTML file
  output.println("</table></body></html>");   
  output.flush();
  output.close(); 

  // Stops the program
  //exit();
}  
