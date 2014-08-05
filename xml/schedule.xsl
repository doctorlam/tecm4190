<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/schedule">
<html>
	<head>
	</head>
<body>
	<div class= "main-content">
	<table>
			<tr>
				<th>Week</th>
				<th>Date</th>
				<th>Learning Objective</th>
				<th>In-Class Activities</th>
				<th>Read</th>
				<th>Homework</th>
			</tr>
		<xsl:for-each select="class">
			<tr>
				<td class="narrow"><xsl:value-of select="week" /></td>
				<td class="narrow"><xsl:value-of select="date" /></td>
		<xsl:for-each select="learning-objective">
				<td class="medium"><ul>
					<xsl:for-each select="objective">
						<li><xsl:value-of select="." /></li>
					</xsl:for-each>
				</ul></td>
		</xsl:for-each>
		<xsl:for-each select="class-activities">
				<td class="medium"><ul>
					<xsl:for-each select="activity">
						<li>
							<xsl:value-of select="." /></li>
					</xsl:for-each>
				</ul></td>
		</xsl:for-each>
		<xsl:for-each select="readings">
					<td class="medium"><ul>
						<xsl:for-each select="article">
							<li><xsl:value-of select="." /></li>
						</xsl:for-each>
						<xsl:for-each select="article_url">
							<li><a class="reading_link"><xsl:attribute name="href"><xsl:value-of select="url" /></xsl:attribute>
							<xsl:value-of select="description" /></a></li>
						</xsl:for-each>
					</ul></td>
			</xsl:for-each>				
			<xsl:for-each select="assignments">
				<td class="wide"><ul>
					<xsl:for-each select="homework">
						<li><xsl:value-of select="." /></li>
					</xsl:for-each>
				</ul></td>
		</xsl:for-each>
			</tr>
		</xsl:for-each>
	</table>
</div>
</body>
</html>

</xsl:template>
</xsl:stylesheet>