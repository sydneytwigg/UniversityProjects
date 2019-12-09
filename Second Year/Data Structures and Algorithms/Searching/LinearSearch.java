public int linearSearch (int [] dataset, int key){
  //loop through values in dataset
  for (int pos = 0; pos < dataset.length; pos++){
    if (dataset[pos] == key){
      //value is found
      return pos;
    }
  }
  //value is not found
  return -1;
}
