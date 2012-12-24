/*********************************************************
*	Chartlet Script Document
*	Used for dynamic tooltip display
*	Please view http://www.chartlet.cn for more information
*	FanG Corp. 2009
*********************************************************/
function showTips(args){
var img=event.srcElement;
var ox=event.offsetX;
var oy=event.offsetY;
var argsGroup=args.split("|");
var left=argsGroup[0].split(",");
var width=argsGroup[1].split(",");
var top=argsGroup[2].split(",");
var height=argsGroup[3].split(",");
var value=argsGroup[4].split(",");
var nowAlt=img.longDesc;
for(i=0;i<left.length;i++){
if(ox>parseInt(left[i]) && ox<parseInt(left[i])+parseInt(width[i])){
if(oy>parseInt(top[i]) && oy<parseInt(top[i])+parseInt(height[i])){
nowAlt=	value[i];
break;
}}}
img.alt=nowAlt;
}
