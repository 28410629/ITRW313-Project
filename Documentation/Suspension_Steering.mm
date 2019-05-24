<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Suspension &amp; Steering" FOLDED="false" ID="ID_1231479572" CREATED="1558688853117" MODIFIED="1558688890901" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false" show_note_icons="true"/>

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
<hook NAME="AutomaticEdgeColor" COUNTER="2" RULE="ON_BRANCH_CREATION"/>
<node TEXT="[q0] Is the vechicle porpoising over bumps?" POSITION="right" ID="ID_468735073" CREATED="1558688956514" MODIFIED="1558689532719">
<edge COLOR="#ff0000"/>
<node TEXT="No" ID="ID_1994292663" CREATED="1558688979482" MODIFIED="1558688981739">
<node TEXT="[q1] Is the vehicle pulling to a side?" ID="ID_1411354522" CREATED="1558689025233" MODIFIED="1558689540231">
<node TEXT="No" ID="ID_840918095" CREATED="1558689040665" MODIFIED="1558689043298">
<node TEXT="[q1-1] Is the flip-flop wheel shimmy?" ID="ID_1817550040" CREATED="1558689132057" MODIFIED="1558689560647">
<node TEXT="No" ID="ID_302388339" CREATED="1558689150753" MODIFIED="1558689587147">
<node TEXT="[q1-1-1] Is the vehicle clunking over bumps?" ID="ID_249229720" CREATED="1558689234224" MODIFIED="1558689594007">
<node TEXT="No" ID="ID_1702386162" CREATED="1558689255607" MODIFIED="1558689256729">
<node TEXT="[q1-1-3] Is the vehicle having lose steering?" ID="ID_762095576" CREATED="1558689294463" MODIFIED="1558689619742">
<node TEXT="No" ID="ID_939749959" CREATED="1558689323463" MODIFIED="1558689324465">
<node TEXT="[q1-1-4] Is the steering vibrating?" ID="ID_727622097" CREATED="1558689348079" MODIFIED="1558689632269">
<node TEXT="No" ID="ID_624402681" CREATED="1558689367455" MODIFIED="1558689368913">
<node TEXT="[r1-1-4-1] Can&apos;t determine engine fault, please take vehicle to mechanic for further diagnosis." ID="ID_1973336336" CREATED="1558689397992" MODIFIED="1558702911977">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Yes" ID="ID_1535278793" CREATED="1558689369119" MODIFIED="1558689370368">
<node TEXT="[r1-1-4-2] Check the wheel balance, loose wheel bolts and brake rotors." ID="ID_343503752" CREATED="1558689371759" MODIFIED="1558689726237">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_1731393069" CREATED="1558689324630" MODIFIED="1558689325897">
<node TEXT="[r1-1-3] Check power steering, bearing and rack mounts." ID="ID_1506683967" CREATED="1558689328119" MODIFIED="1558689713339">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_1805365946" CREATED="1558689256912" MODIFIED="1558689258017">
<node TEXT="[r1-1-1] Replace the worn shocks, bearing and ball joints." ID="ID_856690206" CREATED="1558689260336" MODIFIED="1558689706364">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_1922271865" CREATED="1558689153592" MODIFIED="1558689154970">
<node TEXT="[q1-1-2] Does checking the tyre inflation and wheel balance solve the problem?" ID="ID_1390308861" CREATED="1558689157024" MODIFIED="1558689602154">
<node TEXT="No" ID="ID_438284663" CREATED="1558689184912" MODIFIED="1558689186802">
<node TEXT="[r1-1-2-1] Inspect and replace the tyre and tie rods." ID="ID_1016926161" CREATED="1558689195568" MODIFIED="1558689692812">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Yes" ID="ID_480639358" CREATED="1558689186984" MODIFIED="1558689189058">
<node TEXT="[r1-1-2-2] Problem solved." ID="ID_1089545208" CREATED="1558689218792" MODIFIED="1558717595839">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_1320534457" CREATED="1558689043489" MODIFIED="1558689044866">
<node TEXT="[q1-2] Does checking tyre inflation?" ID="ID_785249385" CREATED="1558689046937" MODIFIED="1558689568837">
<node TEXT="No" ID="ID_811931538" CREATED="1558689069185" MODIFIED="1558689070418">
<node TEXT="[q1-2-1] Are there cracks in the rod or steering rack?" ID="ID_449903438" CREATED="1558689084721" MODIFIED="1558689584138">
<node TEXT="No" ID="ID_240929080" CREATED="1558689099688" MODIFIED="1558689100954">
<node TEXT="[r1-2-1-1] Replace brake caliper." ID="ID_1156901000" CREATED="1558689105297" MODIFIED="1558689674433">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Yes" ID="ID_361016439" CREATED="1558689101144" MODIFIED="1558689102434">
<node TEXT="[r1-2-1-2] Replace rods." ID="ID_76501043" CREATED="1558689116473" MODIFIED="1558715770290">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_156249440" CREATED="1558689070745" MODIFIED="1558689072010">
<node TEXT="[r1-2] Problem solved." ID="ID_392688005" CREATED="1558689075137" MODIFIED="1558689660689">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Yes" ID="ID_152221311" CREATED="1558688982081" MODIFIED="1558688983491">
<node TEXT="[q2] Are the shocks worn?" ID="ID_1834442630" CREATED="1558688988290" MODIFIED="1558689545630">
<node TEXT="No" ID="ID_1497286677" CREATED="1558688995561" MODIFIED="1558688997875">
<node TEXT="[r2-1] Replace the leaf springs." ID="ID_26353087" CREATED="1558689002449" MODIFIED="1558689651074">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT="Yes" ID="ID_917731202" CREATED="1558688998105" MODIFIED="1558688999362">
<node TEXT="[r2-2] Replace the shocks." ID="ID_1020357060" CREATED="1558689015009" MODIFIED="1558689653988">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
