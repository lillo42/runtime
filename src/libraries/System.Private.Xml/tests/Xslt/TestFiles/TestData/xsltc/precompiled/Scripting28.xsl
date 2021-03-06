<?xml version="1.0"?>

<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:the-prefix="the-prefix.this"
	xmlns:the.prefix="the.prefix.this"
	xmlns:theprefix="theprefix"
	xmlns:a.prefix="a-prefix.this"
	xmlns:a-prefix="a.prefix.this"
	xmlns:aprefix="aprefix"
	xmlns:b.prefix="b.prefix"
	xmlns:b-prefix="b-prefix"
	xmlns:bprefix="bprefix.this"
	>

	<xsl:output omit-xml-declaration="yes" encoding="utf-8" indent="no" />

	<!-- This stylesheet is a regression test case for bug 61348. It validates
	     that the implements-prefix attribute can be set to my-prefix. -->

	<msxsl:script language="CSharp" implements-prefix="the-prefix">
		public string HelloAmerica()
		{	return "Hello America"; 
		}
	</msxsl:script>

	<msxsl:script language="CSharp" implements-prefix="the.prefix">
		public string HelloAmerica()
		{	return "Hello America"; 
		}
	</msxsl:script>

	<msxsl:script language="CSharp" implements-prefix="theprefix">
		public string HelloAmerica()
		{	return "Hello America"; 
		}
	</msxsl:script>

	<msxsl:script language="JScript" implements-prefix="a.prefix">
		public function HelloWorld() : String 
		{	return "Hello World";
		}
     	</msxsl:script>

	<msxsl:script language="JScript" implements-prefix="a-prefix">
		public function HelloWorld() : String 
		{	return "Hello World";
		}
     	</msxsl:script>

	<msxsl:script language="JScript" implements-prefix="aprefix">
		public function HelloWorld() : String 
		{	return "Hello World";
		}
     	</msxsl:script>

	<msxsl:script language="VB" implements-prefix="bprefix">
		Public Function HelloSeattle() As String
		          Return("Hello Seattle")
		End Function
	</msxsl:script>

	<msxsl:script language="VB" implements-prefix="b-prefix">
		Public Function HelloSeattle() As String
		          Return("Hello Seattle")
		End Function
	</msxsl:script>

	<msxsl:script language="VB" implements-prefix="b.prefix">
		Public Function HelloSeattle() As String
		          Return("Hello Seattle")
		End Function
	</msxsl:script>

	<xsl:template match='/'>
		<root>
			<output>CSharp Value = <xsl:value-of select="the-prefix:HelloAmerica()" /></output>
			<output>CSharp Value = <xsl:value-of select="theprefix:HelloAmerica()" /></output>
			<output>CSharp Value = <xsl:value-of select="the.prefix:HelloAmerica()" /></output>
			<output>JScript Value = <xsl:value-of select="a.prefix:HelloWorld()" /></output>
			<output>JScript Value = <xsl:value-of select="a-prefix:HelloWorld()" /></output>
			<output>JScript Value = <xsl:value-of select="aprefix:HelloWorld()" /></output>
			<output>VB Value = <xsl:value-of select="bprefix:HelloSeattle()" /></output>
			<output>VB Value = <xsl:value-of select="b-prefix:HelloSeattle()" /></output>
			<output>VB Value = <xsl:value-of select="b.prefix:HelloSeattle()" /></output>
		</root>
	</xsl:template>

</xsl:stylesheet>