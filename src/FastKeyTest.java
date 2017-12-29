public class FastKeyTest {

	public static void main(String[] args) {
		int num = 0;
		for (int i = 0; i < 10; i++) {
			if (i == 3) {
				num = num - i;
			}
			num = num + i;
			System.out.println(num);
			
			System.out.println("FastKeyTest.main()");                                       
		}                                          
                                           
	}                                              
                                                   
	public void printSys() {                       
		System.out.println("FastKeyTest.printSys()");
	}
	

}	

