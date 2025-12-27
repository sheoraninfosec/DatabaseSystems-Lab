USE upes_university;

-- ============================================
-- FACULTY MASTER DATA (114 FACULTY MEMBERS)
-- Realistic Indian Names + Titles
-- ============================================

-- ============================================
-- SCHOOL OF COMPUTER SCIENCE (School ID = 1)
-- Total Faculty = 32
-- ============================================

INSERT INTO Faculty (name, email, phone, address, school_id, designation) VALUES
('Dr. Rohan Mehta', 'rohan.mehta@upes.edu.in', '9876500010', 'Dehradun, Uttarakhand', 1, 'Associate Professor'),
('Prof. Kavita Sharma', 'kavita.sharma@upes.edu.in', '9876500011', 'Delhi, India', 1, 'Assistant Professor'),
('Dr. Suresh Reddy', 'suresh.reddy@upes.edu.in', '9876500012', 'Hyderabad, Telangana', 1, 'Professor'),
('Prof. Manish Kulkarni', 'manish.kulkarni@upes.edu.in', '9876500013', 'Pune, Maharashtra', 1, 'Assistant Professor'),
('Dr. Preeti Nair', 'preeti.nair@upes.edu.in', '9876500014', 'Kochi, Kerala', 1, 'Associate Professor'),
('Prof. Abhishek Sinha', 'abhishek.sinha@upes.edu.in', '9876500015', 'Patna, Bihar', 1, 'Assistant Professor'),
('Dr. Rajesh Gupta', 'rajesh.gupta@upes.edu.in', '9876500016', 'Gurgaon, Haryana', 1, 'Professor'),
('Prof. Nisha Agarwal', 'nisha.agarwal@upes.edu.in', '9876500017', 'Jaipur, Rajasthan', 1, 'Assistant Professor'),
('Dr. Vivek Chaturvedi', 'vivek.chaturvedi@upes.edu.in', '9876500018', 'Lucknow, UP', 1, 'Associate Professor'),
('Prof. Priya Saxena', 'priya.saxena@upes.edu.in', '9876500019', 'Indore, MP', 1, 'Assistant Professor'),
('Dr. Aditya Bansal', 'aditya.bansal@upes.edu.in', '9876500020', 'Chandigarh', 1, 'Professor'),
('Prof. Meenakshi Rao', 'meenakshi.rao@upes.edu.in', '9876500021', 'Bangalore, Karnataka', 1, 'Assistant Professor'),

-- BCA (8 faculty)
('Prof. Aarav Khanna', 'aarav.khanna@upes.edu.in', '9876500022', 'Delhi', 1, 'Assistant Professor'),
('Dr. Shalini Pillai', 'shalini.pillai@upes.edu.in', '9876500023', 'Chennai, TN', 1, 'Associate Professor'),
('Prof. Devansh Tripathi', 'devansh.tripathi@upes.edu.in', '9876500024', 'Kanpur, UP', 1, 'Assistant Professor'),
('Prof. Riya Menon', 'riya.menon@upes.edu.in', '9876500025', 'Kochi', 1, 'Assistant Professor'),
('Dr. Neeraj Rastogi', 'neeraj.rastogi@upes.edu.in', '9876500026', 'Agra, UP', 1, 'Professor'),
('Prof. Sneha Patil', 'sneha.patil@upes.edu.in', '9876500027', 'Mumbai', 1, 'Assistant Professor'),
('Dr. Amitabh Deshmukh', 'amitabh.deshmukh@upes.edu.in', '9876500028', 'Nagpur', 1, 'Associate Professor'),
('Prof. Tanvi Malik', 'tanvi.malik@upes.edu.in', '9876500029', 'Delhi', 1, 'Assistant Professor'),

-- M.Tech CS (6 faculty)
('Dr. Harsh Vardhan', 'harsh.vardhan@upes.edu.in', '9876500030', 'Noida, UP', 1, 'Professor'),
('Prof. Sakshi Reddy', 'sakshi.reddy@upes.edu.in', '9876500031', 'Hyderabad', 1, 'Assistant Professor'),
('Dr. Irfan Shaikh', 'irfan.shaikh@upes.edu.in', '9876500032', 'Pune', 1, 'Associate Professor'),
('Prof. Chitra Mohan', 'chitra.mohan@upes.edu.in', '9876500033', 'Bangalore', 1, 'Assistant Professor'),
('Dr. Kunal Bhattacharya', 'kunal.bhattacharya@upes.edu.in', '9876500034', 'Kolkata', 1, 'Professor'),
('Prof. Neha Kaur', 'neha.kaur@upes.edu.in', '9876500035', 'Chandigarh', 1, 'Assistant Professor'),

-- MSc Cybersecurity (6 faculty)
('Dr. Raghav Menon', 'raghav.menon@upes.edu.in', '9876500036', 'Kochi', 1, 'Professor'),
('Prof. Shruti Verma', 'shruti.verma@upes.edu.in', '9876500037', 'Delhi', 1, 'Assistant Professor'),
('Dr. Sanjay Chauhan', 'sanjay.chauhan@upes.edu.in', '9876500038', 'Shimla', 1, 'Associate Professor'),
('Prof. Aarti Kapoor', 'aarti.kapoor@upes.edu.in', '9876500039', 'Amritsar', 1, 'Assistant Professor'),
('Dr. Mohit Trivedi', 'mohit.trivedi@upes.edu.in', '9876500040', 'Ahmedabad', 1, 'Professor'),
('Prof. Laxmi Yadav', 'laxmi.yadav@upes.edu.in', '9876500041', 'Jaipur', 1, 'Assistant Professor');



-- ============================================
-- SCHOOL OF BUSINESS (School ID = 2)
-- Total Faculty = 20
-- ============================================

INSERT INTO Faculty (name, email, phone, address, school_id, designation) VALUES
('Dr. Varun Tiwari', 'varun.tiwari@upes.edu.in', '9876500042', 'Delhi', 2, 'Professor'),
('Prof. Meera Singh', 'meera.singh@upes.edu.in', '9876500043', 'Jaipur', 2, 'Assistant Professor'),
('Dr. Arvind Rao', 'arvind.rao@upes.edu.in', '9876500044', 'Hyderabad', 2, 'Associate Professor'),
('Prof. Swati Mahajan', 'swati.mahajan@upes.edu.in', '9876500045', 'Gurgaon', 2, 'Assistant Professor'),
('Dr. Yashwant Patil', 'yashwant.patil@upes.edu.in', '9876500046', 'Mumbai', 2, 'Professor'),
('Prof. Rupal Desai', 'rupal.desai@upes.edu.in', '9876500047', 'Surat', 2, 'Assistant Professor'),

('Dr. Deepak Johri', 'deepak.johri@upes.edu.in', '9876500048', 'Kanpur', 2, 'Associate Professor'),
('Prof. Kriti Anand', 'kriti.anand@upes.edu.in', '9876500049', 'Lucknow', 2, 'Assistant Professor'),
('Dr. Mukesh Jain', 'mukesh.jain@upes.edu.in', '9876500050', 'Nagpur', 2, 'Professor'),
('Prof. Avni Chatterjee', 'avni.chatterjee@upes.edu.in', '9876500051', 'Kolkata', 2, 'Assistant Professor'),

-- B.Com
('Prof. Ramya Iyer', 'ramya.iyer@upes.edu.in', '9876500052', 'Bangalore', 2, 'Assistant Professor'),
('Dr. Rohan Das', 'rohan.das@upes.edu.in', '9876500053', 'Guwahati', 2, 'Associate Professor'),
('Prof. Mohini Sharma', 'mohini.sharma@upes.edu.in', '9876500054', 'Delhi', 2, 'Assistant Professor'),
('Dr. Pradeep Kaur', 'pradeep.kaur@upes.edu.in', '9876500055', 'Patiala', 2, 'Professor'),

-- MBA
('Prof. Ajay Nambiar', 'ajay.nambiar@upes.edu.in', '9876500056', 'Kochi', 2, 'Assistant Professor'),
('Dr. Smita Ranade', 'smita.ranade@upes.edu.in', '9876500057', 'Pune', 2, 'Associate Professor'),
('Prof. Harshita Jain', 'harshita.jain@upes.edu.in', '9876500058', 'Delhi', 2, 'Assistant Professor'),
('Dr. Rajiv Bhatia', 'rajiv.bhatia@upes.edu.in', '9876500059', 'Chandigarh', 2, 'Professor'),
('Prof. Nidhi Balaji', 'nidhi.balaji@upes.edu.in', '9876500060', 'Bangalore', 2, 'Assistant Professor');



-- ============================================
-- SCHOOL OF LAW (School ID = 3)
-- Total Faculty = 16
-- ============================================

INSERT INTO Faculty (name, email, phone, address, school_id, designation) VALUES
('Dr. Anuradha Sharma', 'anuradha.sharma@upes.edu.in', '9876500061', 'Delhi', 3, 'Professor'),
('Prof. Gaurav Menon', 'gaurav.menon@upes.edu.in', '9876500062', 'Trivandrum', 3, 'Assistant Professor'),
('Dr. Sujata Rao', 'sujata.rao@upes.edu.in', '9876500063', 'Hyderabad', 3, 'Associate Professor'),
('Prof. Ashish Singh', 'ashish.singh@upes.edu.in', '9876500064', 'Kanpur', 3, 'Assistant Professor'),

('Dr. Poonam Suri', 'poonam.suri@upes.edu.in', '9876500065', 'Amritsar', 3, 'Professor'),
('Prof. Raghav Khurana', 'raghav.khurana@upes.edu.in', '9876500066', 'Delhi', 3, 'Assistant Professor'),
('Dr. Mallika Nair', 'mallika.nair@upes.edu.in', '9876500067', 'Kochi', 3, 'Associate Professor'),
('Prof. Sanjay Kumar', 'sanjay.kumar@upes.edu.in', '9876500068', 'Patna', 3, 'Assistant Professor'),

('Dr. Hema Kothari', 'hema.kothari@upes.edu.in', '9876500069', 'Udaipur', 3, 'Professor'),
('Prof. Kanishk Bedi', 'kanishk.bedi@upes.edu.in', '9876500070', 'Delhi', 3, 'Assistant Professor'),
('Dr. Aditi Kapoor', 'aditi.kapoor@upes.edu.in', '9876500071', 'Chennai', 3, 'Associate Professor'),
('Prof. Vivek Saxena', 'vivek.saxena@upes.edu.in', '9876500072', 'Lucknow', 3, 'Assistant Professor'),

('Dr. Nandita Pillai', 'nandita.pillai@upes.edu.in', '9876500073', 'Trivandrum', 3, 'Professor'),
('Prof. Rohit Purohit', 'rohit.purohit@upes.edu.in', '9876500074', 'Jaipur', 3, 'Assistant Professor'),
('Dr. Sheetal Patwardhan', 'sheetal.patwardhan@upes.edu.in', '9876500075', 'Mumbai', 3, 'Associate Professor'),
('Prof. Yuvraj Narang', 'yuvraj.narang@upes.edu.in', '9876500076', 'Delhi', 3, 'Assistant Professor');



-- ============================================
-- SCHOOL OF ENGINEERING (School ID = 4)
-- Total Faculty = 30
-- ============================================

INSERT INTO Faculty (name, email, phone, address, school_id, designation) VALUES
('Dr. Shravan Joshi', 'shravan.joshi@upes.edu.in', '9876500077', 'Surat', 4, 'Professor'),
('Prof. Manpreet Kaur', 'manpreet.kaur@upes.edu.in', '9876500078', 'Ludhiana', 4, 'Assistant Professor'),
('Dr. Ganesh Pillai', 'ganesh.pillai@upes.edu.in', '9876500079', 'Trivandrum', 4, 'Associate Professor'),
('Prof. Shweta Vyas', 'shweta.vyas@upes.edu.in', '9876500080', 'Jaipur', 4, 'Assistant Professor'),
('Dr. Ramesh Bhat', 'ramesh.bhat@upes.edu.in', '9876500081', 'Bangalore', 4, 'Professor'),
('Prof. Dhruv Tandon', 'dhruv.tandon@upes.edu.in', '9876500082', 'Delhi', 4, 'Assistant Professor'),
('Dr. Vinod Kamat', 'vinod.kamat@upes.edu.in', '9876500083', 'Goa', 4, 'Associate Professor'),
('Prof. Pooja Nambiar', 'pooja.nambiar@upes.edu.in', '9876500084', 'Chennai', 4, 'Assistant Professor'),

-- Mechanical (8)
('Prof. Rajdeep Varma', 'rajdeep.varma@upes.edu.in', '9876500085', 'Pune', 4, 'Assistant Professor'),
('Dr. Alok Tiwari', 'alok.tiwari@upes.edu.in', '9876500086', 'Nagpur', 4, 'Associate Professor'),
('Prof. Tanmay Shah', 'tanmay.shah@upes.edu.in', '9876500087', 'Ahmedabad', 4, 'Assistant Professor'),
('Dr. Sunita Kulkarni', 'sunita.kulkarni@upes.edu.in', '9876500088', 'Mumbai', 4, 'Professor'),

-- Electrical (8)
('Prof. Aniket Shetty', 'aniket.shetty@upes.edu.in', '9876500089', 'Mangalore', 4, 'Assistant Professor'),
('Dr. Preetam Desai', 'preetam.desai@upes.edu.in', '9876500090', 'Rajkot', 4, 'Associate Professor'),
('Prof. Shraddha Mohan', 'shraddha.mohan@upes.edu.in', '9876500091', 'Kochi', 4, 'Assistant Professor'),
('Dr. Utkarsh Sharma', 'utkarsh.sharma@upes.edu.in', '9876500092', 'Gandhinagar', 4, 'Professor'),

-- Aerospace (8)
('Prof. Jayant Iyer', 'jayant.iyer@upes.edu.in', '9876500093', 'Kochi', 4, 'Assistant Professor'),
('Dr. Radhika Bhatia', 'radhika.bhatia@upes.edu.in', '9876500094', 'Delhi', 4, 'Associate Professor'),
('Prof. Rishabh Sethi', 'rishabh.sethi@upes.edu.in', '9876500095', 'Noida', 4, 'Assistant Professor'),
('Dr. Kiran Pillai', 'kiran.pillai@upes.edu.in', '9876500096', 'Trivandrum', 4, 'Professor'),

-- M.Tech Mechanical (6)
('Dr. Manohar Naik', 'manohar.naik@upes.edu.in', '9876500097', 'Hyderabad', 4, 'Associate Professor'),
('Prof. Anita Jaiswal', 'anita.jaiswal@upes.edu.in', '9876500098', 'Indore', 4, 'Assistant Professor'),
('Dr. Shashank Reddy', 'shashank.reddy@upes.edu.in', '9876500099', 'Vizag', 4, 'Professor'),
('Prof. Karishma Pathak', 'karishma.pathak@upes.edu.in', '9876500100', 'Pune', 4, 'Assistant Professor'),
('Dr. Shantanu Kulkarni', 'shantanu.kulkarni@upes.edu.in', '9876500101', 'Mumbai', 4, 'Associate Professor'),
('Prof. Hemant Mishra', 'hemant.mishra@upes.edu.in', '9876500102', 'Delhi', 4, 'Assistant Professor');



-- ============================================
-- SCHOOL OF DESIGN (School ID = 5)
-- Total Faculty = 10
-- ============================================

INSERT INTO Faculty (name, email, phone, address, school_id, designation) VALUES
('Dr. Swaroop Anand', 'swaroop.anand@upes.edu.in', '9876500103', 'Bangalore', 5, 'Professor'),
('Prof. Lavanya Nair', 'lavanya.nair@upes.edu.in', '9876500104', 'Chennai', 5, 'Assistant Professor'),
('Prof. Aryan Kapoor', 'aryan.kapoor@upes.edu.in', '9876500105', 'Delhi', 5, 'Assistant Professor'),
('Dr. Nivedita Rao', 'nivedita.rao@upes.edu.in', '9876500106', 'Hyderabad', 5, 'Associate Professor'),
('Prof. Sia Mehta', 'sia.mehta@upes.edu.in', '9876500107', 'Pune', 5, 'Assistant Professor'),
('Dr. Varsha Menon', 'varsha.menon@upes.edu.in', '9876500108', 'Kochi', 5, 'Professor'),
('Prof. Dhruvi Vora', 'dhruvi.vora@upes.edu.in', '9876500109', 'Surat', 5, 'Assistant Professor'),
('Prof. Anshika Rathi', 'anshika.rathi@upes.edu.in', '9876500110', 'Gurgaon', 5, 'Assistant Professor'),
('Dr. Charu Jain', 'charu.jain@upes.edu.in', '9876500111', 'Noida', 5, 'Associate Professor'),
('Prof. Karan Oberoi', 'karan.oberoi@upes.edu.in', '9876500112', 'Delhi', 5, 'Assistant Professor');



-- ============================================
-- SCHOOL OF HEALTH SCIENCE (School ID = 6)
-- Total Faculty = 6
-- ============================================

INSERT INTO Faculty (name, email, phone, address, school_id, designation) VALUES
('Dr. Anjali Verma', 'anjali.verma@upes.edu.in', '9876500113', 'Delhi', 6, 'Professor'),
('Prof. Rohit Chatterjee', 'rohit.chatterjee@upes.edu.in', '9876500114', 'Kolkata', 6, 'Assistant Professor'),
('Dr. Priyanka Nambiar', 'priyanka.nambiar@upes.edu.in', '9876500115', 'Chennai', 6, 'Associate Professor'),
('Prof. Pranav Suri', 'pranav.suri@upes.edu.in', '9876500116', 'Gurgaon', 6, 'Assistant Professor'),
('Dr. Mehul Deshmukh', 'mehul.deshmukh@upes.edu.in', '9876500117', 'Mumbai', 6, 'Professor'),
('Prof. Naina Kaushik', 'naina.kaushik@upes.edu.in', '9876500118', 'Indore', 6, 'Assistant Professor');

-- END OF FACULTY DATA
