<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Engine" FOLDED="false" ID="ID_721391245" CREATED="1558098620597" MODIFIED="1558098743797" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="4" RULE="ON_BRANCH_CREATION"/>
<node TEXT="[q0] Does the vehicle start?" POSITION="right" ID="ID_659547589" CREATED="1558098776668" MODIFIED="1558606243543">
<edge COLOR="#ff00ff"/>
<node TEXT="No" ID="ID_1865558614" CREATED="1558098792468" MODIFIED="1558098816582">
<node TEXT="[q1] Are there any parts rotating?" ID="ID_556454981" CREATED="1558098821940" MODIFIED="1558606252354">
<node TEXT="No" ID="ID_464502824" CREATED="1558098923115" MODIFIED="1558606482048">
<node TEXT="[q1-1] Is the battery&apos;s voltage more than 12V?" ID="ID_1768060523" CREATED="1558098940562" MODIFIED="1558606491007">
<node TEXT="No" ID="ID_933334095" CREATED="1558098984458" MODIFIED="1558098986483">
<node TEXT="[r1-1] The battery is not charged, please charge it to regain functionality." ID="ID_740848726" CREATED="1558099250274" MODIFIED="1558606674826">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Yes" ID="ID_1984522783" CREATED="1558098987650" MODIFIED="1558098989492">
<node TEXT="[q1-1-1] Is there conductivity between the primary winding and secondary winding of the ignition coil?" ID="ID_135482537" CREATED="1558185666372" MODIFIED="1558606535726">
<node TEXT="No" ID="ID_1512606773" CREATED="1558188312892" MODIFIED="1558188316886">
<node TEXT="[r1-1-1-1] Suggested repair is to replace the ignitions coil." ID="ID_72015732" CREATED="1558188322309" MODIFIED="1558606688603">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Yes" ID="ID_1928090770" CREATED="1558188317188" MODIFIED="1558188318638">
<node TEXT="[r1-1-1-2] Suggested repair is to replace the distributor lead wire connected to the ignition coil." ID="ID_1207144028" CREATED="1558188349676" MODIFIED="1558606701767">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_36561343" CREATED="1558098929027" MODIFIED="1558098930220">
<node TEXT="[q1-2] Does the vehicle have petrol?" ID="ID_355541747" CREATED="1558185718652" MODIFIED="1558606504774">
<node TEXT="No" ID="ID_376348467" CREATED="1558185738509" MODIFIED="1558185741487">
<node TEXT="[r1-2] Please fill it up with petrol to regain functionality." ID="ID_758263659" CREATED="1558185745692" MODIFIED="1558606565460">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Yes" ID="ID_612612257" CREATED="1558185742348" MODIFIED="1558185744239">
<node TEXT="[q1-2-1 &amp; q2-5] What is the surface state of the ignition points?" ID="ID_1304143428" CREATED="1558187379941" MODIFIED="1558606549883">
<node TEXT="Burned" ID="ID_1170441668" CREATED="1558187514460" MODIFIED="1558187521598">
<node TEXT="[r1-2-1-1 &amp; r2-5-1] Suggested repair is to replace the burned points." ID="ID_3860784" CREATED="1558187549188" MODIFIED="1558606636963">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Contaminated" ID="ID_1195837389" CREATED="1558187522107" MODIFIED="1558187531461">
<node TEXT="[r1-2-1-2 &amp; r2-5-2] Suggested repair is to clean the contaminated points." ID="ID_762830312" CREATED="1558187580787" MODIFIED="1558606642859">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Normal" ID="ID_798012232" CREATED="1558187531899" MODIFIED="1558187544462">
<node TEXT="[r1-2-1-3  &amp; r2-5-3] Can&apos;t determine engine fault, please take vehicle to mechanic for further diagnosis." ID="ID_1483997715" CREATED="1558187599787" MODIFIED="1558606649912">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_455167843" CREATED="1558098817131" MODIFIED="1558098819165">
<node TEXT="[q2] Does the vehicle run normally?" ID="ID_367776132" CREATED="1558185927450" MODIFIED="1558606247809">
<node TEXT="No" ID="ID_599190547" CREATED="1558185942626" MODIFIED="1558606270367">
<node ID="ID_1934987079" CREATED="1558186064834" MODIFIED="1558606326261"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <span class="e24Kjd">[q2-1] Does the vehicle struggle to accelerate or sputter and stall whilst driving?</span>
  </body>
</html>

</richcontent>
<node TEXT="No" ID="ID_331216228" CREATED="1558186116641" MODIFIED="1558186120635">
<node TEXT="[q2-2] Does the vehicle engine run rough, jerk, or buck?" ID="ID_1778228648" CREATED="1558186253896" MODIFIED="1558606347144">
<node TEXT="No" ID="ID_1754909577" CREATED="1558186357703" MODIFIED="1558186359240">
<node TEXT="[q2-3] Is the engine making pinging or knocking sounds ?" ID="ID_1937218853" CREATED="1558186364310" MODIFIED="1558606359168">
<node TEXT="No" ID="ID_532313085" CREATED="1558186601980" MODIFIED="1558186604174">
<node TEXT="[q2-4] Is the engine&apos;s power output low?" ID="ID_825720645" CREATED="1558187219126" MODIFIED="1558606369180">
<node TEXT="Yes" ID="ID_1428602665" CREATED="1558187269759" MODIFIED="1558187502708">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1304143428" STARTINCLINATION="-107;-70;" ENDINCLINATION="987;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
<node TEXT="No" ID="ID_1150836881" CREATED="1558187232446" MODIFIED="1558187458566">
<node TEXT="[r2-4] Can&apos;t determine engine fault, please take vehicle to mechanic for further diagnosis." ID="ID_864739786" CREATED="1558187281142" MODIFIED="1558606415377">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_1685419225" CREATED="1558186604924" MODIFIED="1558186918443">
<node TEXT="[r2-3] Suggested repair is to replace the oil filter, thereafter refill the oil with fuel-injection cleaner." ID="ID_761157271" CREATED="1558186609532" MODIFIED="1558606398054">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_64913294" CREATED="1558186359430" MODIFIED="1558186360712">
<node TEXT="[r2-2] The car is misfiring and should be taken to a mechanic to determine the type of misfire and repair to regain functionality." ID="ID_101294278" CREATED="1558186414878" MODIFIED="1558606383603">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_438060805" CREATED="1558186120928" MODIFIED="1558261860390">
<node TEXT="[r2-1] Suggested repair is that the vehicle fuel line should be cleaned to regain functionality." ID="ID_344818090" CREATED="1558186126416" MODIFIED="1558606321285">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_1449471423" CREATED="1558185944682" MODIFIED="1558185947500">
<node TEXT="[r2] Vehicle does not require a repair." ID="ID_186584893" CREATED="1558185949443" MODIFIED="1558606267437">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
