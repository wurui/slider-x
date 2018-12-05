<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.slider-x">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-slider-x" ox-mod="slider-x">
            <xsl:variable select="data/ui-imglist/i[position() &lt; 7]" name="list"/>
            <xsl:variable select="3" name="ext_count"/>
        	<xsl:variable select="count($list) + $ext_count" name="len"/>

            <div class="J_win window" data-count="{$len}" data-extcount="{$ext_count}">
                <div style="width:{$len * 95}%;">
                	<table class="sliderbox" cellpadding="0" cellspacing="0" width="100%" style="margin-left:-{97.5 div $len}%">
                		<tbody>
                			<tr>
                                <td class="item" width="{100 div $len}%">
                                    <a href="">
                                        <img class="mainpic" style="background-image:url({$list[$len - $ext_count]/img})" src="//a.oxm1.cc/img/blank.png"/>
                                        <p class="text-box">
                                            <xsl:value-of select="$list[$len - $ext_count]/title"/>
                                        </p>
                                    </a>
                                </td>
                                
    		            		<xsl:for-each select="$list">
    		            			<td class="item" width="{100 div $len}%">
    		            				<a href="">
    			            				<img class="mainpic" style="background-image:url({img})" src="//a.oxm1.cc/img/blank.png"/>
    			            				<p class="text-box">
    			            					<xsl:value-of select="title"/>
    			            				</p>
    			            			</a>
    		            			</td>
    		            		</xsl:for-each>
                                <td class="item" width="{100 div $len}%">
                                    <a href="">
                                        <img class="mainpic" style="background-image:url({$list[1]/img})" src="//a.oxm1.cc/img/blank.png"/>
                                        <p class="text-box">
                                            <xsl:value-of select="$list[1]/title"/>
                                        </p>
                                    </a>
                                </td>
                                <td class="item" width="{100 div $len}%">
                                    <a href="">
                                        <img class="mainpic" style="background-image:url({$list[2]/img})" src="//a.oxm1.cc/img/blank.png"/>
                                        <p class="text-box">
                                            <xsl:value-of select="$list[2]/title"/>
                                        </p>
                                    </a>
                                </td>
                                
    	            		</tr>
    	            	</tbody>
                	</table>
                </div>
            </div>
            <div class="J_index index" data-on="1">
            	<xsl:for-each select="$list">
            		<i></i>
            	</xsl:for-each>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
