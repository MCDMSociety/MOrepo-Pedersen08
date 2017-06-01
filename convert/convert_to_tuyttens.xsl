<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent="yes"/>
<xsl:variable name='newline'><xsl:text>&#xa;</xsl:text></xsl:variable>
<xsl:variable name='dim' select="apmat/@dimension - 1"/>
<xsl:template match="apmat">
	<xsl:value-of select="@dimension"/>
	<xsl:value-of select="$newline" />
	<xsl:for-each select="cell">
		<xsl:value-of select="entry/@c1"/>
		<xsl:choose>
  			<xsl:when test="@column = $dim">
				<xsl:value-of select="$newline" />
 			</xsl:when>
  			<xsl:otherwise>
				<xsl:text> </xsl:text>
  			</xsl:otherwise>
		</xsl:choose>
	</xsl:for-each>
	<xsl:for-each select="cell">
		<xsl:value-of select="entry/@c2"/>
		<xsl:choose>
  			<xsl:when test="@column = $dim">
				<xsl:value-of select="$newline" />
 			</xsl:when>
  			<xsl:otherwise>
				<xsl:text> </xsl:text>
  			</xsl:otherwise>
		</xsl:choose>
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
