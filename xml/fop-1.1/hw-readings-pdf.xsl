<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:fo="http://www.w3.org/1999/XSL/Format">
  <xsl:output method="xml" indent="yes"/>

<xsl:template match="schedule">
  <fo:root>
      <fo:layout-master-set>
        <fo:simple-page-master master-name="A4-landscape"
              page-height="8.5in" page-width="11in" margin="1in">
          <fo:region-body/>
        </fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="A4-landscape">
        <fo:flow flow-name="xsl-region-body">
     <fo:block font-size="14pt" color="blue" font-family="sans-serif">TECM 4190 - Homework and Readings</fo:block>
    <fo:block margin-top="5pt" margin-bottom="20pt" font-size="8pt" color="blue" font-family="sans-serif">This PDF was generated on:<xsl:value-of select="document(&apos;http://xobjex.com/service/date.xsl&apos;)/date/utc/@rfc-822"/></fo:block>

    <fo:table>
     <fo:table-column column-width="10%"/>
     <fo:table-column column-width="15%"/>
     <fo:table-column column-width="40%"/>
     <fo:table-column column-width="35%"/>
     <fo:table-header text-decoration="underline">
                <fo:table-row>
                  <fo:table-cell>
                    <fo:block font-weight="bold" font-family="serif">Week</fo:block>
                  </fo:table-cell>
                  <fo:table-cell>
                    <fo:block text-align="center" font-weight="bold" font-family="serif">Date</fo:block>
                  </fo:table-cell>
                   <fo:table-cell>
                    <fo:block text-align="center" font-weight="bold" font-family="serif">Readings</fo:block>
                  </fo:table-cell>
                   <fo:table-cell> 
                    <fo:block text-align="center" font-weight="bold" font-family="serif">Homework</fo:block>
                  </fo:table-cell>
                </fo:table-row>
      </fo:table-header>
     <xsl:for-each select="class">
     <fo:table-body>
       <fo:table-row>
         <fo:table-cell>
           <fo:block font-family="garamond" margin-top="20pt" font-size="10pt">
               <xsl:value-of select="week"/>
           </fo:block>
         </fo:table-cell>
         <fo:table-cell>
           <fo:block font-family="garamond" margin="20pt" font-size="10pt">
              <xsl:value-of select="date"/>
           </fo:block>
         </fo:table-cell>
          


        <xsl:for-each select="readings">
               <fo:table-cell>
                 <fo:block font-family="garamond" font-size="10pt">
                  <xsl:for-each select="article">

             <fo:list-block>
                <fo:list-item>
                  <fo:list-item-label>
                    <fo:block></fo:block>
                  </fo:list-item-label>
  
                  <fo:list-item-body>
                    <fo:block font-family="garamond" margin-left="20pt" margin-top="20pt" margin-right="20pt" margin-bottom="0pt"><xsl:value-of select="." /></fo:block>
                  </fo:list-item-body>
                
                  </fo:list-item>
                </fo:list-block>
              </xsl:for-each>
                     <xsl:for-each select="article_url">

             <fo:list-block>
                <fo:list-item>
                  <fo:list-item-label>
                    <fo:block></fo:block>
                  </fo:list-item-label>
  
                  <fo:list-item-body>
                    <fo:block font-family="garamond" margin-left="20pt" margin-top="20pt" margin-right="20pt" margin-bottom="0pt"><xsl:value-of select="." /></fo:block>
                  </fo:list-item-body>
                
                  </fo:list-item>
                </fo:list-block>
              </xsl:for-each>
                 </fo:block>
               </fo:table-cell>
       </xsl:for-each>
        <xsl:for-each select="assignments">
               <fo:table-cell>
                 <fo:block font-size="10pt">
                    <xsl:for-each select="homework">

             <fo:list-block>
                <fo:list-item>
                  <fo:list-item-label>
                    <fo:block></fo:block>
                  </fo:list-item-label>
  
                  <fo:list-item-body>
                    <fo:block font-family="garamond" margin-left="20pt" margin-top="20pt" margin-right="20pt" margin-bottom="0pt"><xsl:value-of select="." /></fo:block>
                  </fo:list-item-body>
                
                  </fo:list-item>
                </fo:list-block>
              </xsl:for-each>
                 </fo:block>
               </fo:table-cell>
            </xsl:for-each>

       </fo:table-row>
     </fo:table-body>
     </xsl:for-each>
   </fo:table>
 </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
</xsl:stylesheet>