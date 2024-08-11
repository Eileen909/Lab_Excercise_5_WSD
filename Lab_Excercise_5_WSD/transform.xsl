<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Product Details</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: white;
                    }
                </style>
            </head>
            <body>
                <h1>Product Details</h1>
                <table>
                    <tr>
                        <th>Product ID</th>
                        <th>Name</th>
                        <th>Type</th>
                        <th>Price</th>
                        <th>ModelNo</th>
                        <th>Colour</th>
                        <th>Warranty</th>
                    </tr>
                    <xsl:for-each select="ProductDetails/Product">
                        <tr>
                            <td><xsl:value-of select="ProductID"/></td>
                            <td><xsl:value-of select="Name"/></td>
                            <td><xsl:value-of select="Type"/></td>
                            <td><xsl:value-of select="Price"/></td>
                            <td><xsl:value-of select="ModelNo"/></td>
                            <td><xsl:value-of select="Colour"/></td>
                            <td><xsl:value-of select="Warranty"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
