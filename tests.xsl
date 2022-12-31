<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="1.0">

    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
        <body>
        <xsl:for-each select="tests/test">
            <h2><xsl:value-of select="test/name"/></h2>
            <br/>
            <!-- <table>
                <tr>
                    <td>
                        Test Case <br/> ID
                    </td>
                    <td colspan="2">
                        <xsl:value-of select="test/name"/>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        Description
                    </td>
                    <td colspan="2">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        Applicable for
                    </td>
                    <td colspan="2">
                        Firefox, Vivaldi, Chromium
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        Initial Conditions
                    </td>
                    <td colspan="2">
                        None. Tests are independent from each other and prepare the system automatically.
                    </td>
                    <td>
                    </td>
                </tr>
               <tr>
                    <td>
                        Test Step ID
                    </td>
                    <td>
                        Test Step Description
                    </td>
                    <td>
                        Expected Result
                    </td>
                </tr>
                <xsl:variable name="counter" as="xs:integer" select="1"/>
                <xsl:for-each select="command">
                    <xsl:variable name="counter" select="$counter + 1"/>
                    <td>
                        <xsl:value-of select="$counter"/>
                    </td>
                    <td>
                        <xsl:value-of select="comment"/>
                    </td>
                    <td>
                        <xsl:value-of select="comment"/>
                    </td>
                </xsl:for-each>
            </table> -->
            <br/>
        </xsl:for-each>
        </body>
        </html>
    </xsl:template> 

</xsl:stylesheet>