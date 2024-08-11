<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Root template -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Hospital Data Overview</title>
                <style>
                    body { font-family: Arial, sans-serif; }
                    table { border-collapse: collapse; width: 100%; margin-bottom: 20px; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; }
                    h2, h3 { color: #333; }
                </style>
            </head>
            <body>
                <h2>Hospital Data Overview</h2>

                <!-- Patients Section -->
                <h3>Patients</h3>
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
                    <xsl:for-each select="Hospital/Patient">
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

                <!-- Medical Records Section -->
                <h3>Medical Records</h3>
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

                <!-- Nurses Section -->
                <h3>Nurses</h3>
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

                <!-- Appointments Section -->
                <h3>Appointments</h3>
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

                <!-- Facilities Section -->
                <h3>Facilities</h3>
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

                <!-- Billing Section -->
                <h3>Billing</h3>
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

                <!-- Insurance Companies Section -->
                <h3>Insurance Companies</h3>
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

                <!-- Feedback Section -->
                <h3>Feedback</h3>
                <table>
                    <tr>
                        <th>Feedback ID</th>
                        <th>Rating</th>
                        <th>Description</th>
                    </tr>
                    <xsl:for-each select="Hospital/Feedback">
                        <tr>
                            <td><xsl:value-of select="@FeedbackID"/></td>
                            <td><xsl:value-of select="Rating"/></td>
                            <td><xsl:value-of select="Description"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
