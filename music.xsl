<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>Music Library</title>
            <link rel="stylesheet" type="text/css" href="styles.css"/>
        </head>
        <body>
            <h2>Music Library</h2>
            <table>
                <tr>
                    <th>Song Title</th>
                    <th>Artist</th>
                    <th>Albums</th>
                    <th>Debut Year</th>
                </tr>
                <xsl:for-each select="music/song">
                    <tr>
                        <td><xsl:value-of select="songTitle"/></td>
                        <td><xsl:value-of select="artist"/></td>
                        <td>
                            <xsl:for-each select="albums/album">
                                <xsl:value-of select="."/><br/>
                            </xsl:for-each>
                        </td>
                        <td><xsl:value-of select="debutYear"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
