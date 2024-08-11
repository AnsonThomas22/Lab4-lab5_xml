<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.example.com/schema">
    <xsl:output method="html" indent="yes"/>

    <!-- Root template -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Your Domain Name</title>
            </head>
            <body>
                <h1>Your Domain Name - Hospital Records</h1>
                <table border="1">
                    <tr>
                        <th>Patient ID</th>
                        <th>Name</th>
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
                            <td><xsl:value-of select="Name/First_Name"/> <xsl:value-of select="Name/Last_Name"/></td>
                            <td><xsl:value-of select="PhoneNumber"/></td>
                            <td><xsl:value-of select="Date_of_Birth"/></td>
                            <td><xsl:value-of select="Gender"/></td>
                            <td><xsl:value-of select="Address"/></td>
                            <td><xsl:value-of select="BloodGroup"/></td>
                            <td><xsl:value-of select="Allergies"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
