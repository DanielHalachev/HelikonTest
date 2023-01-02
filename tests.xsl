<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="3.0">

    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
        <body>
        <xsl:for-each select="tests/test">
            <h3>                
                <xsl:variable name="testCounter" select="position()" />
                3.<xsl:value-of select="$testCounter"/>. 
                <xsl:value-of select="name"/>
            </h3>
            <p><b>Special Instructions</b></p>
            <p><i>NONE</i></p>
            <br/>
            <table border="1px solid black" style="border-collapse: collapse;">
                <tr>
                    <td>
                        <b>Test Case <br/> ID</b>
                    </td>
                    <td colspan="2">
                    <span style="text-transform:uppercase">
                        <xsl:value-of select="id"/>
                    </span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Description</b>
                    </td>
                    <td colspan="2">
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Applicable<br/>for</b>
                    </td>
                    <td colspan="2">
                        Firefox, Vivaldi, Chrome
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Initial<br/>Conditions</b>
                    </td>
                    <td colspan="2">
                        None. Tests are independent from each other and prepare the system automatically.
                    </td>
                </tr>
               <tr>
                    <td>
                        <b>Test Step ID</b>
                    </td>
                    <td>
                        <b>Test Step Description</b>
                    </td>
                    <td>
                        <b>Expected Result</b>
                    </td>
                </tr>
                <xsl:for-each select="commands">
                <xsl:variable name="counter" select="position()" />
                <tr>
                    <td>
                        <xsl:value-of select="$counter"/>
                    </td>
                    <td>
                        <xsl:value-of select="comment"/>
                    </td>
                    <td>
                        <xsl:value-of select="comment"/>
                    </td>
                </tr>
                </xsl:for-each>
                <tr>
                    <td>
                        <b>Test Verdict</b>
                    </td>
                    <td colspan="2">
                        Passed
                    </td>
                </tr>
            </table>
            <br/>
        </xsl:for-each>
        </body>
        </html>
    </xsl:template> 

</xsl:stylesheet>