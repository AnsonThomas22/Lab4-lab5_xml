<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
        <html>
            <head>
                <title>Hospital Data Overview</title>
                <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
                <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" rel="stylesheet"/>
                <style>
                    body { 
                        font-family: Arial; 
                        margin: 0;
                    }
                    nav {
                        margin-bottom: 20px;
                    }
                    table { 
                        border-collapse: collapse; 
                        width: 100%; 
                        margin-bottom: 20px; 
                    }
                    th, td { 
                        border: 1px solid black; 
                        padding: 8px; 
                        text-align: left; 
                    }
                    th { 
                        background-color: #f2f2f2; 
                        font-size: 1.1em; /* Larger font size for table headers */
                        text-align: center; /* Center-align table headers */
                    }
                    td { 
                        font-size: 1em; /* Regular font size for table data */
                    }
                    h2 {
                        background-color: #004080; /* Dark blue background */
                        color: white; 
                        text-align: center; 
                        padding: 20px; 
                        margin: 0; /* Remove default margin */
                        font-weight: bold; /* Make text bold */
                        margin-bottom: 30px;
                    }
                    h3 {
                        color: #333;
                        font-size: 1.2em; /* Larger font size for section headers */
                        margin-bottom: 20px;
                    }
                    footer {
                        background-color: #004080; /* Dark blue background */
                        color: white;
                        text-align: center;
                        padding: 10px;
                        margin-top: 20px;
                    }
                    .navbar {
                        background-color: #004080; /* Dark blue background */
                    }
                    .navbar a {
                        color: white;
                        text-decoration: none;
                        padding: 8px 12px;
                    }
                    .navbar a:hover {
                        color: #cce5ff; /* Light blue on hover */
                    }
                </style>
            </head>
            <body>
                <nav class="navbar">
                    <div class="container mx-auto flex justify-between items-center">
                        <div class="text-white text-lg font-bold">
                            Claire Hospital
                        </div>
                        <ul class="flex space-x-4">
                            <li><a href="lab4.xml" class="text-white hover:text-blue-300">Home</a></li>
                            <li><a href="map.html" class="text-white hover:text-blue-300">Location</a></li>
                            <li><a href="#" class="text-white hover:text-blue-300">Services</a></li>
                            <li><a href="#" class="text-white hover:text-blue-300">Contact</a></li>
                        </ul>
                    </div>
                </nav>

               
                <h2 class='bg-blue-500 p-4'>Hospital Data Overview</h2>
                <p></p>
            

                <h3 class="text-Blue">Patients</h3>
                <table>
                   
                    <tr>
                        <th>Patient ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Phone Number</th>
                        <th>Date of Birth</th>
                        <th>Gender</th>
                        <th>Address</th>
                        <th>Blood Group</th>
                        <th>Allergies</th>
                    </tr>

                    
                    <xsl:for-each select="Hospital/Patient[@Patient_ID='A12']">
                        <tr>
                            <td><xsl:value-of select="@Patient_ID"/></td>
                            <td><xsl:value-of select="Name/First_Name"/></td>
                            <td><xsl:value-of select="Name/Last_Name"/></td>
                            <td><xsl:value-of select="PhoneNumber"/></td>
                            <td><xsl:value-of select="Date_of_Birth"/></td>
                            <td><xsl:value-of select="Gender"/></td>
                            <td><xsl:value-of select="Address"/></td>
                            <td><xsl:value-of select="BloodGroup"/></td>
                            <td><xsl:value-of select="Allergies"/></td>
                        </tr>
                    </xsl:for-each>
                    <xsl:for-each select="Hospital/Patient[@Patient_ID='A13']">
                        <tr>
                            <td><xsl:value-of select="@Patient_ID"/></td>
                            <td><xsl:value-of select="Name/First_Name"/></td>
                            <td><xsl:value-of select="Name/Last_Name"/></td>
                            <td><xsl:value-of select="PhoneNumber"/></td>
                            <td><xsl:value-of select="Date_of_Birth"/></td>
                            <td><xsl:value-of select="Gender"/></td>
                            <td><xsl:value-of select="Address"/></td>
                            <td><xsl:value-of select="BloodGroup"/></td>
                            <td><xsl:value-of select="Allergies"/></td>
                        </tr>
                    </xsl:for-each>
                    
                </table>

              
                <h3 class="text-Blue">Medical Records</h3>
                <table>
                    <tr>
                        <th>Record ID</th>
                        <th>Patient ID</th>
                        <th>Doctor ID</th>
                        <th>Diagnosis</th>
                        <th>Treatment</th>
                        <th>Last Visit</th>
                        <th>Medications</th>
                    </tr>
                    <xsl:for-each select="Hospital/MedicalRecords">
                        <tr>
                            <td><xsl:value-of select="@RecordID"/></td>
                            <td><xsl:value-of select="PatientID"/></td>
                            <td><xsl:value-of select="DoctorID"/></td>
                            <td><xsl:value-of select="Diagnosis"/></td>
                            <td><xsl:value-of select="Treatment"/></td>
                            <td><xsl:value-of select="LastVisit"/></td>
                            <td><xsl:value-of select="Medications"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                
                <h3 class="text-Blue">Nurses</h3>
                <table>
                    <tr>
                        <th>Nurse ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Phone Number</th>
                        <th>Department</th>
                        <th>Experience (Years)</th>
                        <th>Shift</th>
                        <th>Certification</th>
                    </tr>
                    <xsl:for-each select="Hospital/Nurse">
                        <tr>
                            <td><xsl:value-of select="@NurseID"/></td>
                            <td><xsl:value-of select="Name/First_Name"/></td>
                            <td><xsl:value-of select="Name/Last_Name"/></td>
                            <td><xsl:value-of select="PhoneNumber"/></td>
                            <td><xsl:value-of select="Department"/></td>
                            <td><xsl:value-of select="Experience"/></td>
                            <td><xsl:value-of select="Shift"/></td>
                            <td><xsl:value-of select="Certification"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                
                <h3 class="text-Blue">Appointments</h3>
                <table>
                    <tr>
                        <th>Appointment ID</th>
                        <th>Patient ID</th>
                        <th>Doctor ID</th>
                        <th>Appointment Date</th>
                        <th>Purpose</th>
                        <th>Location</th>
                        <th>Status</th>
                        <th>Follow-Up Required</th>
                    </tr>
                    <xsl:for-each select="Hospital/Appointment">
                        <tr>
                            <td><xsl:value-of select="@AppointmentID"/></td>
                            <td><xsl:value-of select="PatientID"/></td>
                            <td><xsl:value-of select="DoctorID"/></td>
                            <td><xsl:value-of select="AppointmentDate"/></td>
                            <td><xsl:value-of select="Purpose"/></td>
                            <td><xsl:value-of select="Location"/></td>
                            <td><xsl:value-of select="Status"/></td>
                            <td><xsl:value-of select="FollowUpRequired"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h3 class="text-Blue">Facilities</h3>
                <table>
                    <tr>
                        <th>Facility ID</th>
                        <th>Name</th>
                        <th>Location</th>
                        <th>Capacity</th>
                        <th>Type</th>
                        <th>Parking Available</th>
                        <th>Operating Rooms</th>
                    </tr>
                    <xsl:for-each select="Hospital/Facility">
                        <tr>
                            <td><xsl:value-of select="@FacilityID"/></td>
                            <td><xsl:value-of select="NameFa"/></td>
                            <td><xsl:value-of select="Location"/></td>
                            <td><xsl:value-of select="Capacity"/></td>
                            <td><xsl:value-of select="Type"/></td>
                            <td><xsl:value-of select="ParkingAvailable"/></td>
                            <td><xsl:value-of select="OperatingRooms"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h3 class="text-Blue">Billing</h3>
                <table>
                    <tr>
                        <th>Bill ID</th>
                        <th>Patient ID</th>
                        <th>Amount</th>
                        <th>Payment Status</th>
                        <th>Date Issued</th>
                        <th>Payment Method</th>
                    </tr>
                    <xsl:for-each select="Hospital/Billing">
                        <tr>
                            <td><xsl:value-of select="@BillID"/></td>
                            <td><xsl:value-of select="PatientID"/></td>
                            <td><xsl:value-of select="Amount"/></td>
                            <td><xsl:value-of select="PaymentStatus"/></td>
                            <td><xsl:value-of select="DateIssued"/></td>
                            <td><xsl:value-of select="PaymentMethod"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h3 class="text-Blue">Insurance Companies</h3>
                <table>
                    <tr>
                        <th>Company ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Phone Number</th>
                        <th>Address</th>
                        <th>Coverage Types</th>
                        <th>Policy Details</th>
                        <th>Customer Review</th>
                        <th>Claims Processing Time (Days)</th>
                    </tr>
                    <xsl:for-each select="Hospital/InsuranceCompany">
                        <tr>
                            <td><xsl:value-of select="@CompanyID"/></td>
                            <td><xsl:value-of select="Name/First_Name"/></td>
                            <td><xsl:value-of select="Name/Last_Name"/></td>
                            <td><xsl:value-of select="PhoneNumber"/></td>
                            <td><xsl:value-of select="Address"/></td>
                            <td><xsl:value-of select="CoverageTypes"/></td>
                            <td><xsl:value-of select="PolicyDetails"/></td>
                            <td><xsl:value-of select="CustomerReview"/></td>
                            <td><xsl:value-of select="ClaimsProcessingTime"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

             
                <h3 class="text-Blue">Feedback</h3>
                <table>
                    <tr>
                        <th>Feedback ID</th>
                        <th>Feedback Rating</th>
                        <th>Description</th>
                    </tr>
                    <xsl:for-each select="Hospital/Feedback">
                        <tr>
                            <td><xsl:value-of select="@FeedbackID"/></td>
                            <td><xsl:value-of select="Feedrating"/></td>
                            <td><xsl:value-of select="Description"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <p></p>
                <h2 class='bg-blue-500 p-4'>Maps</h2>
                <iframe src="https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d1943.8462914875736!2d77.60932424712982!3d12.991503729069004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMTLCsDU5JzI5LjEiTiA3N8KwMzYnNDIuMiJF!5e0!3m2!1sen!2sin!4v1723433449965!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>




                <footer>
                    <p class="foot"> &#169; 2024 Claire Hospital. All rights reserved</p>
                </footer>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
