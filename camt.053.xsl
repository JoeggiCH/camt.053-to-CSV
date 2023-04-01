<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>My CD Collection</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Booking Date</th>
      <th style="text-align:left">Valuta Date</th>
      <th style="text-align:left">Amount</th>
      <th style="text-align:left">Currency</th>
      <th style="text-align:left">#Tx in Booking</th>
      <th style="text-align:left">Credit/Debit</th>
      <th style="text-align:left">Debitor</th>
      <th style="text-align:left">Creditor</th>
      <th style="text-align:left">AddtlTxInf</th>
      <th style="text-align:left">Ustrd</th>
      <th style="text-align:left">AddtlNtryInf</th>
      <th style="text-align:left">Reversal</th>
      <th style="text-align:left">Status</th>
    </tr>
    <xsl:for-each select="Document/BkToCstmrStmt/Stmt/Ntry/NtryDtls/TxDtls">
    <tr>
      <td><xsl:value-of select="../../BookgDt/Dt"/></td>
      <td><xsl:value-of select="../../ValDt/Dt"/></td>
      <td><xsl:value-of select="Amt"/></td>
      <td><xsl:value-of select="Amt/@Ccy"/></td>
      <td><xsl:value-of select="../Btch/NbOfTxs"/></td>
      <td><xsl:value-of select="CdtDbtInd"/></td>
      <td><xsl:value-of select="RltdPties/Dbtr/Nm"/></td>
      <td><xsl:value-of select="RltdPties/Cdtr/Nm"/></td>
      <td><xsl:value-of select="AddtlTxInf"/></td>
      <td><xsl:value-of select="RmtInf/Ustrd"/></td>
      <td><xsl:value-of select="../../AddtlNtryInf"/></td>
      <td><xsl:value-of select="../../RvslInd"/></td>
      <td><xsl:value-of select="../../Sts"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

