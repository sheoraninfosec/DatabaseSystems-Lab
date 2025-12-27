USE upes_university;

-- ============================================================
-- STUDENT INSERTS PER PROGRAM (Indian Names + Addresses)
-- ============================================================

-- ============================================================
-- Program 1: B.Tech Computer Science (12 Students)
-- ============================================================

INSERT INTO Student (name, email, phone, address, admission_year, program_id, specialization_id) VALUES
('Aarav Sharma', 'aarav.sharma01@stu.upes.ac.in', '9810012345', 'Rohini Sector 8, New Delhi', 2023, 1, NULL),
('Riya Verma', 'riya.verma02@stu.upes.ac.in', '9876543210', 'MG Road, Bengaluru', 2023, 1, NULL),
('Siddharth Chauhan', 'siddharth.chauhan03@stu.upes.ac.in', '9823456711', 'Baner, Pune', 2023, 1, NULL),
('Ananya Singh', 'ananya.singh04@stu.upes.ac.in', '9811178900', 'Salt Lake, Kolkata', 2023, 1, NULL),
('Karan Bansal', 'karan.bansal05@stu.upes.ac.in', '9899123456', 'Andheri West, Mumbai', 2023, 1, NULL),
('Mehul Raghav', 'mehul.raghav06@stu.upes.ac.in', '9822003344', 'Gomti Nagar, Lucknow', 2023, 1, NULL),
('Harshita Patel', 'harshita.patel07@stu.upes.ac.in', '9888899001', 'Thaltej, Ahmedabad', 2023, 1, NULL),
('Mohit Yadav', 'mohit.yadav08@stu.upes.ac.in', '9988776655', 'Civil Lines, Jaipur', 2023, 1, NULL),
('Kavya Deshpande', 'kavya.deshpande09@stu.upes.ac.in', '9877001122', 'Aundh, Pune', 2023, 1, NULL),
('Naman Joshi', 'naman.joshi10@stu.upes.ac.in', '9811122200', 'Jayanagar, Bengaluru', 2023, 1, NULL),
('Ishita Rao', 'ishita.rao11@stu.upes.ac.in', '9823445566', 'Hitech City, Hyderabad', 2023, 1, NULL),
('Tanishq Sheoran', 'tanishq.sheoran12@stu.upes.ac.in', '9899911122', 'Golf Course Road, Gurgaon', 2023, 1, NULL);


-- ============================================================
-- Program 2: BCA (10 Students)
-- ============================================================

INSERT INTO Student VALUES
(NULL, 'Priya Malhotra', 'priya.malhotra21@stu.upes.ac.in', '9876611223', 'Noida Sector 62, Uttar Pradesh', 2023, 2, NULL),
(NULL, 'Aditya Narang', 'aditya.narang22@stu.upes.ac.in', '9812223344', 'Bandra East, Mumbai', 2023, 2, NULL),
(NULL, 'Sneha Bhatt', 'sneha.bhatt23@stu.upes.ac.in', '9823344556', 'Kothrud, Pune', 2023, 2, NULL),
(NULL, 'Rohit Saini', 'rohit.saini24@stu.upes.ac.in', '9797979797', 'Sector 17, Chandigarh', 2023, 2, NULL),
(NULL, 'Aisha Khan', 'aisha.khan25@stu.upes.ac.in', '9898076543', 'Charminar, Hyderabad', 2023, 2, NULL),
(NULL, 'Parth Patel', 'parth.patel26@stu.upes.ac.in', '9900998877', 'Ghodasar, Ahmedabad', 2023, 2, NULL),
(NULL, 'Manan Tiwari', 'manan.tiwari27@stu.upes.ac.in', '9888002211', 'Indiranagar, Bengaluru', 2023, 2, NULL),
(NULL, 'Jasleen Kaur', 'jasleen.kaur28@stu.upes.ac.in', '9911554433', 'Rajouri Garden, Delhi', 2023, 2, NULL),
(NULL, 'Devansh Rawat', 'devansh.rawat29@stu.upes.ac.in', '9833557766', 'Dehradun, Uttarakhand', 2023, 2, NULL),
(NULL, 'Aarohi Desai', 'aarohi.desai30@stu.upes.ac.in', '9844221144', 'Satellite, Ahmedabad', 2023, 2, NULL);


-- ============================================================
-- Program 3: M.Tech Computer Science (12 Students)
-- Specialization: 60% CyberSec (1) , 40% AIML (2)
-- ============================================================

INSERT INTO Student(name, email, phone, address, admission_year, program_id, specialization_id) VALUES
('Jigesh Sheoran', 'jigesh.sheoran41@stu.upes.ac.in', '9810077788', 'Gurgaon Sector 46, Haryana', 2024, 3, 1),
('Aayush Sharma', 'aayush.sharma42@stu.upes.ac.in', '9822113344', 'Malviya Nagar, Jaipur', 2024, 3, 1),
('Radhika Nair', 'radhika.nair43@stu.upes.ac.in', '9899001133', 'Panampilly Nagar, Kochi', 2024, 3, 1),
('Kunal Verma', 'kunal.verma44@stu.upes.ac.in', '9811234411', 'Hinjewadi, Pune', 2024, 3, 1),
('Isha Wadhwa', 'isha.wadhwa45@stu.upes.ac.in', '9876554323', 'Saket, New Delhi', 2024, 3, 1),
('Yuvraj Singh', 'yuvraj.singh46@stu.upes.ac.in', '9811889900', 'Gomti Nagar, Lucknow', 2024, 3, 1),
('Pallavi Reddy', 'pallavi.reddy47@stu.upes.ac.in', '9887766554', 'Madhapur, Hyderabad', 2024, 3, 1),

('Ishan Kapoor', 'ishan.kapoor48@stu.upes.ac.in', '9822331199', 'Vasant Vihar, Delhi', 2024, 3, 2),
('Aniket Rao', 'aniket.rao49@stu.upes.ac.in', '9799887744', 'Jubilee Hills, Hyderabad', 2024, 3, 2),
('Meera Joshi', 'meera.joshi50@stu.upes.ac.in', '9811002244', 'Kalyani Nagar, Pune', 2024, 3, 2),
('Rohit Menon', 'rohit.menon51@stu.upes.ac.in', '9877008899', 'Banaswadi, Bengaluru', 2024, 3, 2),
('Devika Chauhan', 'devika.chauhan52@stu.upes.ac.in', '9855332277', 'Satellite Road, Ahmedabad', 2024, 3, 2);


-- ============================================================
-- Program 4: MSc Cybersecurity (10 Students)
-- ============================================================

INSERT INTO Student VALUES
(NULL, 'Sarthak Mishra', 'sarthak.mishra61@stu.upes.ac.in', '9811998877', 'Bhubaneswar, Odisha', 2024, 4, NULL),
(NULL, 'Amrita Paul', 'amrita.paul62@stu.upes.ac.in', '9822123455', 'Salt Lake, Kolkata', 2024, 4, NULL),
(NULL, 'Jatin Khurana', 'jatin.khurana63@stu.upes.ac.in', '9811223388', 'Patiala, Punjab', 2024, 4, NULL),
(NULL, 'Chirag Rawal', 'chirag.rawal64@stu.upes.ac.in', '9876601122', 'Gandhinagar, Gujarat', 2024, 4, NULL),
(NULL, 'Tanya Mehta', 'tanya.mehta65@stu.upes.ac.in', '9898877665', 'Borivali West, Mumbai', 2024, 4, NULL),
(NULL, 'Nikhil Suresh', 'nikhil.suresh66@stu.upes.ac.in', '9866442211', 'Kozhikode, Kerala', 2024, 4, NULL),
(NULL, 'Priyanshi Singh', 'priyanshi.singh67@stu.upes.ac.in', '9855776611', 'Allahabad, Uttar Pradesh', 2024, 4, NULL),
(NULL, 'Amitabh Yadav', 'amitabh.yadav68@stu.upes.ac.in', '9810099988', 'Ranchi, Jharkhand', 2024, 4, NULL),
(NULL, 'Simran Kaur', 'simran.kaur69@stu.upes.ac.in', '9888800077', 'Amritsar, Punjab', 2024, 4, NULL),
(NULL, 'Yash Arora', 'yash.arora70@stu.upes.ac.in', '9845002211', 'HSR Layout, Bengaluru', 2024, 4, NULL);


-- ============================================================
-- Program 5: BBA (12 Students)
-- ============================================================

INSERT INTO Student VALUES
(NULL, 'Arnav Mehta', 'arnav.mehta81@stu.upes.ac.in', '9810077443', 'Vastrapur, Ahmedabad', 2023, 5, NULL),
(NULL, 'Ishika Bansal', 'ishika.bansal82@stu.upes.ac.in', '9876677885', 'Koregaon Park, Pune', 2023, 5, NULL),
(NULL, 'Saanvi Kapoor', 'saanvi.kapoor83@stu.upes.ac.in', '9811885544', 'Saket, New Delhi', 2023, 5, NULL),
(NULL, 'Aviral Jain', 'aviral.jain84@stu.upes.ac.in', '9833445566', 'Banjara Hills, Hyderabad', 2023, 5, NULL),
(NULL, 'Ruhi Chauhan', 'ruhi.chauhan85@stu.upes.ac.in', '9899988776', 'Thane West, Mumbai', 2023, 5, NULL),
(NULL, 'Pari Sinha', 'pari.sinha86@stu.upes.ac.in', '9810077885', 'Anna Nagar, Chennai', 2023, 5, NULL),
(NULL, 'Harshit Raj', 'harshit.raj87@stu.upes.ac.in', '9797112255', 'Patna, Bihar', 2023, 5, NULL),
(NULL, 'Vidhi Khanna', 'vidhi.khanna88@stu.upes.ac.in', '9811225309', 'Civil Lines, Delhi', 2023, 5, NULL),
(NULL, 'Advik Nair', 'advik.nair89@stu.upes.ac.in', '9844776633', 'Kakkanad, Kochi', 2023, 5, NULL),
(NULL, 'Navya Rathod', 'navya.rathod90@stu.upes.ac.in', '9833001122', 'Gachibowli, Hyderabad', 2023, 5, NULL),
(NULL, 'Kabir Menon', 'kabir.menon91@stu.upes.ac.in', '9866445511', 'HSR Layout, Bengaluru', 2023, 5, NULL),
(NULL, 'Trisha Malhotra', 'trisha.malhotra92@stu.upes.ac.in', '9815566778', 'Salt Lake, Kolkata', 2023, 5, NULL);


-- ============================================================
-- Program 6: B.Com (10 Students)
-- ============================================================

INSERT INTO Student VALUES
(NULL, 'Raghav Gupta', 'raghav.gupta101@stu.upes.ac.in', '9822299911', 'Dwarka Sector 12, Delhi', 2023, 6, NULL),
(NULL, 'Tanvi Shah', 'tanvi.shah102@stu.upes.ac.in', '9811177711', 'C G Road, Ahmedabad', 2023, 6, NULL),
(NULL, 'Krish Patel', 'krish.patel103@stu.upes.ac.in', '9844332200', 'Koramangala, Bengaluru', 2023, 6, NULL),
(NULL, 'Ayesha Khan', 'ayesha.khan104@stu.upes.ac.in', '9876655441', 'Tonk Road, Jaipur', 2023, 6, NULL),
(NULL, 'Divyansh Soni', 'divyansh.soni105@stu.upes.ac.in', '9810077122', 'Alkapuri, Vadodara', 2023, 6, NULL),
(NULL, 'Pooja Iyer', 'pooja.iyer106@stu.upes.ac.in', '9833554433', 'Jayanagar, Bengaluru', 2023, 6, NULL),
(NULL, 'Ujjwal Verma', 'ujjwal.verma107@stu.upes.ac.in', '9899887654', 'Andheri West, Mumbai', 2023, 6, NULL),
(NULL, 'Myra Kapoor', 'myra.kapoor108@stu.upes.ac.in', '9822113344', 'Sector 17, Chandigarh', 2023, 6, NULL),
(NULL, 'Shaurya Chauhan', 'shaurya.chauhan109@stu.upes.ac.in', '9797661122', 'Salt Lake, Kolkata', 2023, 6, NULL),
(NULL, 'Reema Sood', 'reema.sood110@stu.upes.ac.in', '9810088776', 'Sector 28, Gurugram', 2023, 6, NULL);


-- ============================================================
-- Program 7: MBA (10 Students)
-- ============================================================

INSERT INTO Student VALUES
(NULL, 'Anshul Mehta', 'anshul.mehta121@stu.upes.ac.in', '9833221144', 'Powai, Mumbai', 2024, 7, NULL),
(NULL, 'Niharika Rao', 'niharika.rao122@stu.upes.ac.in', '9877889922', 'Banjara Hills, Hyderabad', 2024, 7, NULL),
(NULL, 'Rajveer Singh', 'rajveer.singh123@stu.upes.ac.in', '9811002211', 'Vasant Kunj, Delhi', 2024, 7, NULL),
(NULL, 'Krupa Desai', 'krupa.desai124@stu.upes.ac.in', '9822001133', 'Navarangpura, Ahmedabad', 2024, 7, NULL),
(NULL, 'Shardul Nair', 'shardul.nair125@stu.upes.ac.in', '9899887766', 'MG Road, Bengaluru', 2024, 7, NULL),
(NULL, 'Jhanvi Sheth', 'jhanvi.sheth126@stu.upes.ac.in', '9811233344', 'Thaltej, Ahmedabad', 2024, 7, NULL),
(NULL, 'Abhay Raj', 'abhay.raj127@stu.upes.ac.in', '9799001122', 'Civil Lines, Jaipur', 2024, 7, NULL),
(NULL, 'Tisha Khurana', 'tisha.khurana128@stu.upes.ac.in', '9822334455', 'Jayanagar, Bengaluru', 2024, 7, NULL),
(NULL, 'Varun Puri', 'varun.puri129@stu.upes.ac.in', '9815667788', 'Sector 14, Gurugram', 2024, 7, NULL),
(NULL, 'Simran Gulati', 'simran.gulati130@stu.upes.ac.in', '9866554433', 'Salt Lake, Kolkata', 2024, 7, NULL);


-- ============================================================
-- Program 8: BA LL.B (15 Students)
-- ============================================================

INSERT INTO Student VALUES
(NULL, 'Aniket Bhatia', 'aniket.bhatia141@stu.upes.ac.in', '9822110099', 'Hauz Khas, Delhi', 2023, 8, NULL),
(NULL, 'Diya Malhotra', 'diya.malhotra142@stu.upes.ac.in', '9877665522', 'Sector 21, Chandigarh', 2023, 8, NULL),
(NULL, 'Ritvik Sharma', 'ritvik.sharma143@stu.upes.ac.in', '9811122334', 'Panchkula, Haryana', 2023, 8, NULL),
(NULL, 'Anaya Khurana', 'anaya.khurana144@stu.upes.ac.in', '9899007788', 'Sector 15, Noida', 2023, 8, NULL),
(NULL, 'Daksh Bansal', 'daksh.bansal145@stu.upes.ac.in', '9822003355', 'Civil Lines, Delhi', 2023, 8, NULL),
(NULL, 'Jhanvi Yadav', 'jhanvi.yadav146@stu.upes.ac.in', '9900099887', 'Pitampura, Delhi', 2023, 8, NULL),
(NULL, 'Ishaan Kapoor', 'ishaan.kapoor147@stu.upes.ac.in', '9855778899', 'Aundh, Pune', 2023, 8, NULL),
(NULL, 'Aarohi Nanda', 'aarohi.nanda148@stu.upes.ac.in', '9810001122', 'Kalyani Nagar, Pune', 2023, 8, NULL),
(NULL, 'Samaira Jain', 'samaira.jain149@stu.upes.ac.in', '9823345566', 'Indirapuram, Ghaziabad', 2023, 8, NULL),
(NULL, 'Tejas Arora', 'tejas.arora150@stu.upes.ac.in', '9819988776', 'Gurgaon Sector 23', 2023, 8, NULL),
(NULL, 'Kritika Sood', 'kritika.sood151@stu.upes.ac.in', '9898776654', 'Salt Lake, Kolkata', 2023, 8, NULL),
(NULL, 'Harshit Malhotra', 'harshit.malhotra152@stu.upes.ac.in', '9833221122', 'Behala, Kolkata', 2023, 8, NULL),
(NULL, 'Kabir Ahuja', 'kabir.ahuja153@stu.upes.ac.in', '9876654433', 'Kamla Nagar, Delhi', 2023, 8, NULL),
(NULL, 'Meher Gupta', 'meher.gupta154@stu.upes.ac.in', '9815566778', 'Tagore Town, Allahabad', 2023, 8, NULL),
(NULL, 'Devanshi Kapoor', 'devanshi.kapoor155@stu.upes.ac.in', '9866001122', 'Sushant Lok, Gurugram', 2023, 8, NULL);


-- ============================================================
-- Program 9: BBA LL.B (12 Students)
-- ============================================================

INSERT INTO Student VALUES
(NULL, 'Ishaan Mehra', 'ishaan.mehra161@stu.upes.ac.in', '9810033445', 'Punjabi Bagh, Delhi', 2023, 9, NULL),
(NULL, 'Tanya Suri', 'tanya.suri162@stu.upes.ac.in', '9899776654', 'Preet Vihar, Delhi', 2023, 9, NULL),
(NULL, 'Manav Khattar', 'manav.khattar163@stu.upes.ac.in', '9817788990', 'Sector 12, Noida', 2023, 9, NULL),
(NULL, 'Aanya Oberoi', 'aanya.oberoi164@stu.upes.ac.in', '9933445566', 'Bandra West, Mumbai', 2023, 9, NULL),
(NULL, 'Shaurya Tandon', 'shaurya.tandon165@stu.upes.ac.in', '9822115599', 'Aundh, Pune', 2023, 9, NULL),
(NULL, 'Mahira Khan', 'mahira.khan166@stu.upes.ac.in', '9877005544', 'Salt Lake, Kolkata', 2023, 9, NULL),
(NULL, 'Reyansh Mathur', 'reyansh.mathur167@stu.upes.ac.in', '9810088221', 'Gomti Nagar, Lucknow', 2023, 9, NULL),
(NULL, 'Anushka Shetty', 'anushka.shetty168@stu.upes.ac.in', '9844227799', 'HSR Layout, Bengaluru', 2023, 9, NULL),
(NULL, 'Nakul Chopra', 'nakul.chopra169@stu.upes.ac.in', '9822344433', 'Hinjewadi, Pune', 2023, 9, NULL),
(NULL, 'Lavanya Bhat', 'lavanya.bhat170@stu.upes.ac.in', '9876655400', 'Kakkanad, Kochi', 2023, 9, NULL),
(NULL, 'Harnoor Kaur', 'harnoor.kaur171@stu.upes.ac.in', '9866002211', 'Phase 3, Mohali', 2023, 9, NULL),
(NULL, 'Arjun Sirohi', 'arjun.sirohi172@stu.upes.ac.in', '9812299900', 'Sector 7, Dwarka', 2023, 9, NULL);


-- ============================================================
-- Program 10: LL.M (8 Students)
-- ============================================================

INSERT INTO Student VALUES
(NULL, 'Mehul Chatterjee', 'mehul.chatterjee181@stu.upes.ac.in', '9877554432', 'Park Street, Kolkata', 2024, 10, NULL),
(NULL, 'Shruti Venkatesh', 'shruti.venkatesh182@stu.upes.ac.in', '9845003344', 'Indiranagar, Bengaluru', 2024, 10, NULL),
(NULL, 'Raghav Khatri', 'raghav.khatri183@stu.upes.ac.in', '9811200099', 'Model Town, Delhi', 2024, 10, NULL),
(NULL, 'Simran Gill', 'simran.gill184@stu.upes.ac.in', '9876001122', 'Chandigarh Sector 22', 2024, 10, NULL),
(NULL, 'Hardik Sangwan', 'hardik.sangwan185@stu.upes.ac.in', '9899887765', 'Gurgaon Sector 54', 2024, 10, NULL),
(NULL, 'Divya Balaji', 'divya.balaji186@stu.upes.ac.in', '9823445566', 'Anna Nagar, Chennai', 2024, 10, NULL),
(NULL, 'Abhinav Rao', 'abhinav.rao187@stu.upes.ac.in', '9804556644', 'Jubilee Hills, Hyderabad', 2024, 10, NULL),
(NULL, 'Anjali Sood', 'anjali.sood188@stu.upes.ac.in', '9814556677', 'Salt Lake, Kolkata', 2024, 10, NULL);


-- ============================================================
-- ENGINEERING PROGRAMS
-- ============================================================

-- Program 11: B.Tech Mechanical (12 Students)
INSERT INTO Student VALUES
(NULL, 'Rohan Bhandari', 'rohan.bhandari201@stu.upes.ac.in', '9811133112', 'Jayanagar, Bengaluru', 2023, 11, NULL),
(NULL, 'Vedant Iyer', 'vedant.iyer202@stu.upes.ac.in', '9822110055', 'Hauz Khas, Delhi', 2023, 11, NULL),
(NULL, 'Shreya Banerjee', 'shreya.banerjee203@stu.upes.ac.in', '9876665512', 'Salt Lake, Kolkata', 2023, 11, NULL),
(NULL, 'Rudra Pathak', 'rudra.pathak204@stu.upes.ac.in', '9818880011', 'Andheri East, Mumbai', 2023, 11, NULL),
(NULL, 'Aditi Kapoor', 'aditi.kapoor205@stu.upes.ac.in', '9833445562', 'Baner, Pune', 2023, 11, NULL),
(NULL, 'Shaurya Nair', 'shaurya.nair206@stu.upes.ac.in', '9799776611', 'Vellore, Tamil Nadu', 2023, 11, NULL),
(NULL, 'Tara Joshi', 'tara.joshi207@stu.upes.ac.in', '9900997711', 'Mylapore, Chennai', 2023, 11, NULL),
(NULL, 'Anmol Shetty', 'anmol.shetty208@stu.upes.ac.in', '9845002211', 'JP Nagar, Bengaluru', 2023, 11, NULL),
(NULL, 'Devika Reddy', 'devika.reddy209@stu.upes.ac.in', '9800112233', 'Kondapur, Hyderabad', 2023, 11, NULL),
(NULL, 'Arnav Rathod', 'arnav.rathod210@stu.upes.ac.in', '9811220044', 'Vesu, Surat', 2023, 11, NULL),
(NULL, 'Mahesh Thakur', 'mahesh.thakur211@stu.upes.ac.in', '9899776612', 'Ambala, Haryana', 2023, 11, NULL),
(NULL, 'Saanvi Dixit', 'saanvi.dixit212@stu.upes.ac.in', '9877002211', 'Indore, Madhya Pradesh', 2023, 11, NULL);

-- Program 12: B.Tech Electrical (10 Students)
INSERT INTO Student VALUES
(NULL, 'Anirudh Raina', 'anirudh.raina221@stu.upes.ac.in', '9811554466', 'South Extension, Delhi', 2023, 12, NULL),
(NULL, 'Niharika Sen', 'niharika.sen222@stu.upes.ac.in', '9899002234', 'Dwarka Sector 14, Delhi', 2023, 12, NULL),
(NULL, 'Shashank Rao', 'shashank.rao223@stu.upes.ac.in', '9877123451', 'Whitefield, Bengaluru', 2023, 12, NULL),
(NULL, 'Prachi Malhotra', 'prachi.malhotra224@stu.upes.ac.in', '9811667789', 'Pimpri, Pune', 2023, 12, NULL),
(NULL, 'Sameer Verma', 'sameer.verma225@stu.upes.ac.in', '9823341188', 'Ameerpet, Hyderabad', 2023, 12, NULL),
(NULL, 'Jatin Shah', 'jatin.shah226@stu.upes.ac.in', '9900332211', 'Ellis Bridge, Ahmedabad', 2023, 12, NULL),
(NULL, 'Divya Ram', 'divya.ram227@stu.upes.ac.in', '9811122566', 'Choolai, Chennai', 2023, 12, NULL),
(NULL, 'Hrithik Nair', 'hrithik.nair228@stu.upes.ac.in', '9844009988', 'Kakkanad, Kochi', 2023, 12, NULL),
(NULL, 'Lakshya Gupta', 'lakshya.gupta229@stu.upes.ac.in', '9799002211', 'IC Colony, Mumbai', 2023, 12, NULL),
(NULL, 'Poonam Shetty', 'poonam.shetty230@stu.upes.ac.in', '9866443322', 'Goregaon, Mumbai', 2023, 12, NULL);

-- Program 13: B.Tech Aerospace (10 Students)
INSERT INTO Student VALUES
(NULL, 'Rudransh Malviya', 'rudransh.malviya241@stu.upes.ac.in', '9810077121', 'Noida Sector 15', 2023, 13, NULL),
(NULL, 'Ishita Vohra', 'ishita.vohra242@stu.upes.ac.in', '9823445577', 'Gurgaon Sector 56', 2023, 13, NULL),
(NULL, 'Anubhav Sen', 'anubhav.sen243@stu.upes.ac.in', '9811887700', 'New Town, Kolkata', 2023, 13, NULL),
(NULL, 'Rhea Kapoor', 'rhea.kapoor244@stu.upes.ac.in', '9877003311', 'Indiranagar, Bengaluru', 2023, 13, NULL),
(NULL, 'Aarav Mathur', 'aarav.mathur245@stu.upes.ac.in', '9899331100', 'Wakad, Pune', 2023, 13, NULL),
(NULL, 'Yashvi Sharma', 'yashvi.sharma246@stu.upes.ac.in', '9822118765', 'Malad West, Mumbai', 2023, 13, NULL),
(NULL, 'Aman Yadav', 'aman.yadav247@stu.upes.ac.in', '9811009080', 'Sector 10, Chandigarh', 2023, 13, NULL),
(NULL, 'Trisha Rao', 'trisha.rao248@stu.upes.ac.in', '9844002214', 'Anna Nagar, Chennai', 2023, 13, NULL),
(NULL, 'Vedant Malhotra', 'vedant.malhotra249@stu.upes.ac.in', '9876001133', 'Ashok Nagar, Delhi', 2023, 13, NULL),
(NULL, 'Myra Khatter', 'myra.khatter250@stu.upes.ac.in', '9822334466', 'Borivali East, Mumbai', 2023, 13, NULL);


-- ============================================================
-- Program 14: M.Tech Mechanical (8 Students)
-- ============================================================

INSERT INTO Student VALUES
(NULL, 'Rajdeep Singh', 'rajdeep.singh261@stu.upes.ac.in', '9811122211', 'Chandigarh Sector 20', 2024, 14, NULL),
(NULL, 'Shravani Iyer', 'shravani.iyer262@stu.upes.ac.in', '9822114488', 'Kormangala, Bengaluru', 2024, 14, NULL),
(NULL, 'Aryan Khatri', 'aryan.khatri263@stu.upes.ac.in', '9899988775', 'Aundh, Pune', 2024, 14, NULL),
(NULL, 'Srushti Shah', 'srushti.shah264@stu.upes.ac.in', '9877665511', 'Ahmedabad, Gujarat', 2024, 14, NULL),
(NULL, 'Viraj Soni', 'viraj.soni265@stu.upes.ac.in', '9811005544', 'Salt Lake, Kolkata', 2024, 14, NULL),
(NULL, 'Tara Nambiar', 'tara.nambiar266@stu.upes.ac.in', '9844223311', 'HSR Layout, Bengaluru', 2024, 14, NULL),
(NULL, 'Karan Dhawan', 'karan.dhawan267@stu.upes.ac.in', '9799776615', 'Gurgaon Sector 43', 2024, 14, NULL),
(NULL, 'Mitali Verma', 'mitali.verma268@stu.upes.ac.in', '9833221145', 'Powai, Mumbai', 2024, 14, NULL);


-- ============================================================
-- Program 15: Bachelor of Design (10 Students)
-- ============================================================

INSERT INTO Student VALUES
(NULL, 'Rhea Kapoor', 'rhea.kapoor271@stu.upes.ac.in', '9811233345', 'MG Road, Bengaluru', 2023, 15, NULL),
(NULL, 'Ishaan Arora', 'ishaan.arora272@stu.upes.ac.in', '9845002211', 'Vasant Kunj, Delhi', 2023, 15, NULL),
(NULL, 'Trisha Menon', 'trisha.menon273@stu.upes.ac.in', '9876001131', 'Anna Nagar, Chennai', 2023, 15, NULL),
(NULL, 'Jatin Wadhwa', 'jatin.wadhwa274@stu.upes.ac.in', '9822334499', 'Gurgaon Sector 50', 2023, 15, NULL),
(NULL, 'Simran Chadha', 'simran.chadha275@stu.upes.ac.in', '9815566677', 'Salt Lake, Kolkata', 2023, 15, NULL),
(NULL, 'Aarav Menon', 'aarav.menon276@stu.upes.ac.in', '9899886677', 'Baner, Pune', 2023, 15, NULL),
(NULL, 'Muskan Shetty', 'muskan.shetty277@stu.upes.ac.in', '9844002233', 'JP Nagar, Bengaluru', 2023, 15, NULL),
(NULL, 'Kabir Malhotra', 'kabir.malhotra278@stu.upes.ac.in', '9876554412', 'Rajouri Garden, Delhi', 2023, 15, NULL),
(NULL, 'Aanya Chopra', 'aanya.chopra279@stu.upes.ac.in', '9811122235', 'Andheri East, Mumbai', 2023, 15, NULL),
(NULL, 'Arjun Nair', 'arjun.nair280@stu.upes.ac.in', '9822113311', 'Kakkanad, Kochi', 2023, 15, NULL);


-- ============================================================
-- Program 16: Master of Design (8 Students)
-- ============================================================

INSERT INTO Student VALUES
(NULL, 'Devika Ramesh', 'devika.ramesh291@stu.upes.ac.in', '9876001155', 'HSR Layout, Bengaluru', 2024, 16, NULL),
(NULL, 'Lakshit Kapoor', 'lakshit.kapoor292@stu.upes.ac.in', '9811228899', 'Vasant Kunj, Delhi', 2024, 16, NULL),
(NULL, 'Ritu Venkatesh', 'ritu.venkatesh293@stu.upes.ac.in', '9823441188', 'T Nagar, Chennai', 2024, 16, NULL),
(NULL, 'Sudarshan Iyer', 'sudarshan.iyer294@stu.upes.ac.in', '9833552211', 'Andheri West, Mumbai', 2024, 16, NULL),
(NULL, 'Tanvi Kohli', 'tanvi.kohli295@stu.upes.ac.in', '9877889900', 'Sector 21, Chandigarh', 2024, 16, NULL),
(NULL, 'Advait Menon', 'advait.menon296@stu.upes.ac.in', '9811555577', 'BTM Layout, Bengaluru', 2024, 16, NULL),
(NULL, 'Kavya Chatterjee', 'kavya.chatterjee297@stu.upes.ac.in', '9823445577', 'Salt Lake, Kolkata', 2024, 16, NULL),
(NULL, 'Samarjit Rao', 'samarjit.rao298@stu.upes.ac.in', '9845001188', 'Jubilee Hills, Hyderabad', 2024, 16, NULL);


-- ============================================================
-- Program 17: B.Pharm (10 Students)
-- ============================================================

INSERT INTO Student VALUES
(NULL, 'Devansh Khanna', 'devansh.khanna301@stu.upes.ac.in', '9811765534', 'Indiranagar, Bengaluru', 2023, 17, NULL),
(NULL, 'Aanya Sethi', 'aanya.sethi302@stu.upes.ac.in', '9877661100', 'Vasant Vihar, Delhi', 2023, 17, NULL),
(NULL, 'Ritvik Menon', 'ritvik.menon303@stu.upes.ac.in', '9844552211', 'HSR Layout, Bengaluru', 2023, 17, NULL),
(NULL, 'Meera Pillai', 'meera.pillai304@stu.upes.ac.in', '9822113388', 'Panampilly Nagar, Kochi', 2023, 17, NULL),
(NULL, 'Arnav Jain', 'arnav.jain305@stu.upes.ac.in', '9810077121', 'Civil Lines, Delhi', 2023, 17, NULL),
(NULL, 'Sahana Krishnan', 'sahana.krishnan306@stu.upes.ac.in', '9876654421', 'Anna Nagar, Chennai', 2023, 17, NULL),
(NULL, 'Jashanpreet Singh', 'jashanpreet.singh307@stu.upes.ac.in', '9788865544', 'Phase 7, Mohali', 2023, 17, NULL),
(NULL, 'Rhea Nambiar', 'rhea.nambiar308@stu.upes.ac.in', '9844001122', 'Kakkanad, Kochi', 2023, 17, NULL),
(NULL, 'Darshan Shetty', 'darshan.shetty309@stu.upes.ac.in', '9811229988', 'Worli, Mumbai', 2023, 17, NULL),
(NULL, 'Sneha Kurup', 'sneha.kurup310@stu.upes.ac.in', '9899004411', 'BTM Layout, Bengaluru', 2023, 17, NULL);

