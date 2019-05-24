<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Tyres &amp; Wheels" FOLDED="false" ID="ID_638591810" CREATED="1558261877543" MODIFIED="1558699596534" STYLE="oval">
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
<hook NAME="AutomaticEdgeColor" COUNTER="1" RULE="ON_BRANCH_CREATION"/>
<node TEXT="[q0] Is the tyre/s inflated?" POSITION="right" ID="ID_1183873024" CREATED="1558261901520" MODIFIED="1558699149195">
<edge COLOR="#ff0000"/>
<node TEXT="No" ID="ID_794307967" CREATED="1558261914480" MODIFIED="1558261915513">
<node TEXT="[q1] Is there any signs of a puncture?" ID="ID_338886911" CREATED="1558261922088" MODIFIED="1558699352532">
<node TEXT="No" ID="ID_142430055" CREATED="1558261932408" MODIFIED="1558261933538">
<node TEXT="[r1-1] Suggested repair is to re-inflate the tyre/s." ID="ID_118306063" CREATED="1558261937968" MODIFIED="1558699835578">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Yes" ID="ID_277163132" CREATED="1558261933984" MODIFIED="1558261935434">
<node TEXT="[r1-2] Suggested repair is to fix the puncture and re-inflate the tyre/s." ID="ID_1249282974" CREATED="1558261950704" MODIFIED="1558699843315">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_875968010" CREATED="1558261916160" MODIFIED="1558261917385">
<node TEXT="[q2] Is the car pulling to a side whilst driving?" ID="ID_1290244253" CREATED="1558261983368" MODIFIED="1558699220677">
<node TEXT="No" ID="ID_694642890" CREATED="1558261995103" MODIFIED="1558261996145">
<node TEXT="[r2] Suggested repair is to get a wheel alignment done." ID="ID_1882133982" CREATED="1558262170517" MODIFIED="1558699828895">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Yes" ID="ID_50056399" CREATED="1558261996575" MODIFIED="1558261997864">
<node TEXT="[q2-1] Is the wheel/s moving freely?" ID="ID_235206818" CREATED="1558262000359" MODIFIED="1558699580253">
<node TEXT="No" ID="ID_1807324262" CREATED="1558262012479" MODIFIED="1558262014448">
<node TEXT="[r2-1] Suggested repair is to apply oil to the axle of the faulty wheel/s." ID="ID_322184072" CREATED="1558262153423" MODIFIED="1558699860384">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Yes" ID="ID_1018351413" CREATED="1558262015039" MODIFIED="1558262016560">
<node TEXT="[q2-2] Is the wheel/s vibrating whilst driving on a even surface?" ID="ID_1757705163" CREATED="1558262017807" MODIFIED="1558699570388">
<node TEXT="No" ID="ID_1945367160" CREATED="1558262027535" MODIFIED="1558262028656">
<node TEXT="[r2-2] Vehicle does not require a repair." ID="ID_1024708086" CREATED="1558262126582" MODIFIED="1558702881149">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Yes" ID="ID_1407020480" CREATED="1558262028991" MODIFIED="1558262212088">
<node TEXT="[q2-3] Is there any mud or dirt present in rim/s of the faulty wheel/s?" ID="ID_1074617744" CREATED="1558262035814" MODIFIED="1558699559518">
<node TEXT="No" ID="ID_1086240109" CREATED="1558262048326" MODIFIED="1558262049440">
<node TEXT="[q2-4] Is there any noise coming from the wheel bearings of the faulty wheel/s?" ID="ID_708575659" CREATED="1558262056087" MODIFIED="1558699540752">
<node TEXT="No" ID="ID_1603521658" CREATED="1558262082823" MODIFIED="1558262084264">
<node TEXT="[r2-4-1] Can&apos;t determine engine fault, please take vehicle to mechanic for further diagnosis." ID="ID_1723521645" CREATED="1558262090878" MODIFIED="1558702898153">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Yes" ID="ID_556038688" CREATED="1558262084725" MODIFIED="1558262086103">
<node TEXT="[r2-4-2] Suggested repair is to change all loose, worn or damaged wheel bearings." ID="ID_1464794113" CREATED="1558262101206" MODIFIED="1558699894983">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_360747420" CREATED="1558262049902" MODIFIED="1558262051344">
<node TEXT="[r2-3] Suggested repair is to clean the mud/dirt from the rim." ID="ID_127856742" CREATED="1558262116366" MODIFIED="1558699876122">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
