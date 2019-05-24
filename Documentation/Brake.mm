<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Brake" FOLDED="false" ID="ID_286986958" CREATED="1558615223855" MODIFIED="1558615232196" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false"/>

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
<node TEXT="[q0] Do the brake pedal feel hard whilst driving?" POSITION="right" ID="ID_1754655337" CREATED="1558615256124" MODIFIED="1558704363420">
<edge COLOR="#ff0000"/>
<node TEXT="No" ID="ID_621919371" CREATED="1558615267403" MODIFIED="1558615269564">
<node TEXT="[q1] Does the brake pedal feel soft/spongy?" ID="ID_146051310" CREATED="1558615363299" MODIFIED="1558703753498">
<node TEXT="No" ID="ID_1610252301" CREATED="1558615390338" MODIFIED="1558615392316">
<node TEXT="[q1-1] Is the vehicle pull to one a side whilst braking?" ID="ID_1621458957" CREATED="1558615496034" MODIFIED="1558703924523">
<node TEXT="No" ID="ID_182924102" CREATED="1558615514962" MODIFIED="1558615516626">
<node TEXT="[q1-1-1] Is the brake pedal pulsing whilst driving?" ID="ID_884733512" CREATED="1558615549705" MODIFIED="1558703999147">
<node TEXT="No" ID="ID_491125954" CREATED="1558615570481" MODIFIED="1558615571923">
<node TEXT="[r1-1-1] Can&apos;t determine engine fault, please take vehicle to mechanic for further diagnosis." ID="ID_815870551" CREATED="1558615577201" MODIFIED="1558704016805">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Yes" ID="ID_164719551" CREATED="1558615572178" MODIFIED="1558615573402">
<node TEXT="[q1-1-2] Is the brake discs still thick at the side that the vehicle pulling?" ID="ID_993783090" CREATED="1558615587698" MODIFIED="1558704133133">
<node TEXT="No" ID="ID_103056900" CREATED="1558615618545" MODIFIED="1558615619586">
<node TEXT="[r1-1-2-1] Suggested replace the brake pads." ID="ID_1161912633" CREATED="1558615624393" MODIFIED="1558715264002">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Yes" ID="ID_1334233296" CREATED="1558615619761" MODIFIED="1558615621619">
<node TEXT="[r1-1-2-2] Suggested repair is to resurface the brake discs." ID="ID_1735802734" CREATED="1558615630953" MODIFIED="1558715270401">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_1478256846" CREATED="1558615516874" MODIFIED="1558615518147">
<node TEXT="[r1-1] There is a possibility of frozen brake caliper. Suggested repair is to check if it is and unstick the brake caliper." ID="ID_1716746258" CREATED="1558615520778" MODIFIED="1558715403692">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_1679014367" CREATED="1558615393122" MODIFIED="1558615394309">
<node TEXT="[q1-2] Is there any signs of a leakage near the brake master cylinder?" ID="ID_1852103363" CREATED="1558615399915" MODIFIED="1558704239289">
<node TEXT="No" ID="ID_614211684" CREATED="1558615421235" MODIFIED="1558615422684">
<node TEXT="[r1-2-1] Suggested repair is to check for internal damamge, if there is replace the brake master cylinder." ID="ID_421966824" CREATED="1558615428002" MODIFIED="1558715201146">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Yes" ID="ID_524400453" CREATED="1558615423090" MODIFIED="1558615424404">
<node TEXT="[r1-2-2] Suggested repair is to find and repair leakage near brake master cylinder." ID="ID_57736763" CREATED="1558615450259" MODIFIED="1558715143755">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_1377615179" CREATED="1558615269763" MODIFIED="1558615271356">
<node TEXT="[q2] Has the vehicle the vehicle been unused for some time?" ID="ID_333401149" CREATED="1558615276676" MODIFIED="1558703875420">
<node TEXT="No" ID="ID_237399950" CREATED="1558615288940" MODIFIED="1558615290797">
<node TEXT="[r2-1] Most likely a vault with the engine vacuum or a defective brake booster. Suggested repair is to inspect both and repair as needed." ID="ID_311219666" CREATED="1558615293915" MODIFIED="1558715040191">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Yes" ID="ID_594666378" CREATED="1558615291035" MODIFIED="1558615292332">
<node TEXT="[r2-2] Suggested repair is to clean the brake pedal." ID="ID_1317883557" CREATED="1558615314115" MODIFIED="1558704420275">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
