<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:fo="http://www.w3.org/1999/XSL/Format">
  <xsl:output method="xml" indent="yes"/>

<xsl:template match="schedule">
  <fo:root>
      <fo:layout-master-set>
        <fo:simple-page-master master-name="A4-landscape"
              page-height="21.0cm" page-width="29.7cm" margin="2cm">
          <fo:region-body/>
        </fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="A4-landscape">
        <fo:flow flow-name="xsl-region-body">
    <fo:table>
     <fo:table-column column-width="10%"/>
     <fo:table-column column-width="10%"/>
     <fo:table-column column-width="20%"/>
     <fo:table-column column-width="20%"/>
     <fo:table-column column-width="20%"/>
      <fo:table-column column-width="20%"/>
     <fo:table-header>
                <fo:table-row>
                  <fo:table-cell>
                    <fo:block font-weight="bold">Week</fo:block>
                  </fo:table-cell>
                  <fo:table-cell>
                    <fo:block font-weight="bold">Date</fo:block>
                  </fo:table-cell>
                   <fo:table-cell>
                    <fo:block font-weight="bold">Learning Objective</fo:block>
                  </fo:table-cell>
                   <fo:table-cell>
                    <fo:block font-weight="bold">In-Class Activity</fo:block>
                  </fo:table-cell>
                   <fo:table-cell>
                    <fo:block font-weight="bold">Readings</fo:block>
                  </fo:table-cell>
                   <fo:table-cell>
                    <fo:block font-weight="bold">Homework</fo:block>
                  </fo:table-cell>
                </fo:table-row>
      </fo:table-header>
     <xsl:for-each select="class">
     <fo:table-body>
       <fo:table-row>
         <fo:table-cell>
           <fo:block margin="12pt" font-weight="bold" font-size="8pt">
               <xsl:value-of select="week"/>
           </fo:block>
         </fo:table-cell>
         <fo:table-cell>
           <fo:block margin="12pt" font-size="8pt">
              <xsl:value-of select="date"/>
           </fo:block>
         </fo:table-cell>
          <xsl:for-each select= "learning-objective">

          <fo:table-cell>
            <fo:block margin="12pt" font-size="8pt">
             <xsl:for-each select="objective">

             <fo:list-block>
                <fo:list-item>
                  <fo:list-item-label>
                    <fo:block provisional-distance-between-starts="1cm" margin="6pt">*</fo:block>
                  </fo:list-item-label>
  
                  <fo:list-item-body>
                    <fo:block margin="6pt"><xsl:value-of select="." /></fo:block>
                  </fo:list-item-body>
                
                  </fo:list-item>
                </fo:list-block>
            </xsl:for-each>

              </fo:block>
         </fo:table-cell>
        </xsl:for-each>
          <xsl:for-each select= "class-activities">
               <fo:table-cell>
                 <fo:block margin="12pt" font-size="8pt">
                  <xsl:for-each select="activity">
                      <fo:list-block>
                    <fo:list-item>
                      <fo:list-item-label>
                        <fo:block provisional-distance-between-starts="1cm" margin="6pt">*</fo:block>
                      </fo:list-item-label>
      
                      <fo:list-item-body>
                        <fo:block margin="6pt"><xsl:value-of select="." /></fo:block>
                  </fo:list-item-body>
                
                  </fo:list-item>
                </fo:list-block>
            </xsl:for-each>
                 </fo:block>
               </fo:table-cell>
            </xsl:for-each>

        <xsl:for-each select="readings">
               <fo:table-cell>
                 <fo:block margin="12pt" font-size="8pt">
                  <xsl:for-each select="article">

             <fo:list-block>
                <fo:list-item>
                  <fo:list-item-label>
                    <fo:block provisional-distance-between-starts="1cm" margin="6pt">*</fo:block>
                  </fo:list-item-label>
  
                  <fo:list-item-body>
                    <fo:block margin="6pt"><xsl:value-of select="." /></fo:block>
                  </fo:list-item-body>
                
                  </fo:list-item>
                </fo:list-block>
              </xsl:for-each>
                     <xsl:for-each select="article_url">

             <fo:list-block>
                <fo:list-item>
                  <fo:list-item-label>
                    <fo:block provisional-distance-between-starts="1cm" margin="6pt">*</fo:block>
                  </fo:list-item-label>
  
                  <fo:list-item-body>
                    <fo:block margin="6pt"><xsl:value-of select="." /></fo:block>
                  </fo:list-item-body>
                
                  </fo:list-item>
                </fo:list-block>
              </xsl:for-each>
                 </fo:block>
               </fo:table-cell>
       </xsl:for-each>
        <xsl:for-each select="assignments">
               <fo:table-cell>
                 <fo:block margin="12pt" font-size="8pt">
                    <xsl:for-each select="homework">

             <fo:list-block>
                <fo:list-item>
                  <fo:list-item-label>
                    <fo:block provisional-distance-between-starts="1cm" margin="6pt">*</fo:block>
                  </fo:list-item-label>
  
                  <fo:list-item-body>
                    <fo:block margin="6pt"><xsl:value-of select="." /></fo:block>
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