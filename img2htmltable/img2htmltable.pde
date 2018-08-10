void setup() {
  size(800, 300);
  PImage img = loadImage("data/image.jpg");
  image(img, 0, 0);
  
  PrintWriter output = createWriter("image.html"); 
  output.println("hhello world"); // Write the coordinate to the file
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file
  exit(); // Stops the program
}  
