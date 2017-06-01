<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
<xsl:variable name='newline'><xsl:text>&#xa;</xsl:text></xsl:variable>

<xsl:template match="apmat">c COSTRANGE = [<xsl:value-of select="@costrange"/>]
c ENTRYRANGE = [<xsl:value-of select="@entryrange"/>]
d <xsl:value-of select="@dimension"/>
<xsl:value-of select="$newline" />
<xsl:apply-templates select="cell"/>
</xsl:template>

<xsl:template match="cell">
<xsl:value-of select="@row"/><xsl:text> </xsl:text><xsl:value-of select="@column"/><xsl:text> </xsl:text>
<xsl:value-of select="@entries"/><xsl:value-of select="$newline" /><xsl:apply-templates select="entry"/>
</xsl:template>

<xsl:template match="entry">
   <xsl:value-of select="@c1"/><xsl:text> </xsl:text><xsl:value-of select="@c2"/>
   <xsl:value-of select="$newline" />
</xsl:template>

</xsl:stylesheet>
