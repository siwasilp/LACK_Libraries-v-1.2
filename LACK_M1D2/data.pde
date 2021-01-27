Table table;
String[] list1;
int index=0;
int[] timexx = new int[100];
TableRow result = null;
String filename   = "data/mydata.csv";
Table mytable;
int tcols, trows, numcol = 0;
boolean dprint = false;

void get_tabledata() {                             // get tabledata from file
  println("__open file " + filename);
  mytable = loadTable(filename, "header, csv");
  tcols = mytable.getColumnCount();
  trows = mytable.getRowCount();
  index = tcols;
  
  if (true) {
   // println("total cols in table: " + tcols);
   // println("total rows in table: " + trows + ", header line not counted ");
   // println("header: ");
    for ( int c = 0; c < tcols; c++)  {
   //   println("headerline col: " + c + " " + mytable.getColumnTitle(c));
    }
    for ( int r = 0; r < trows; r++) {
      TableRow thisrow = mytable.getRow(r);
      
      for ( int c = 0; c < tcols; c++) {
    //    println("row " + r + " col " + c + " " + mytable.getColumnTitle(c) + " : " + thisrow.getString(c));
   if(c==8){ 
   timexx[r]=thisrow.getInt(c)*1000*60; 
 }
     }
    }
  // println(timexx);
  }
}
void reload() {
  get_tabledata();
}
