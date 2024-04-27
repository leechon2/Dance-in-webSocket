<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:if test="${msg != null }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
	</c:if>
<!doctype html>
<html lang="en-US">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<meta name="author" content="W3Layouts.com" />

    <link href="${pageContext.request.contextPath }/resources/CSS/style-liberty.css" rel="stylesheet" />
	<title>Contact page &#8211; Dress Up WordPress Theme</title>
<meta name='robots' content='max-image-preview:large' />
<link rel="alternate" type="application/rss+xml" title="Dress Up WordPress Theme &raquo; Feed" href="https://wp.w3layouts.com/dressup/feed/" />
<link rel="alternate" type="application/rss+xml" title="Dress Up WordPress Theme &raquo; Comments Feed" href="https://wp.w3layouts.com/dressup/comments/feed/" />
<script>
window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/14.0.0\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/14.0.0\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/wp.w3layouts.com\/dressup\/wp-includes\/js\/wp-emoji-release.min.js?ver=6.2.4"}};
/*! This file is auto-generated */
!function(e,a,t){var n,r,o,i=a.createElement("canvas"),p=i.getContext&&i.getContext("2d");function s(e,t){p.clearRect(0,0,i.width,i.height),p.fillText(e,0,0);e=i.toDataURL();return p.clearRect(0,0,i.width,i.height),p.fillText(t,0,0),e===i.toDataURL()}function c(e){var t=a.createElement("script");t.src=e,t.defer=t.type="text/javascript",a.getElementsByTagName("head")[0].appendChild(t)}for(o=Array("flag","emoji"),t.supports={everything:!0,everythingExceptFlag:!0},r=0;r<o.length;r++)t.supports[o[r]]=function(e){if(p&&p.fillText)switch(p.textBaseline="top",p.font="600 32px Arial",e){case"flag":return s("\ud83c\udff3\ufe0f\u200d\u26a7\ufe0f","\ud83c\udff3\ufe0f\u200b\u26a7\ufe0f")?!1:!s("\ud83c\uddfa\ud83c\uddf3","\ud83c\uddfa\u200b\ud83c\uddf3")&&!s("\ud83c\udff4\udb40\udc67\udb40\udc62\udb40\udc65\udb40\udc6e\udb40\udc67\udb40\udc7f","\ud83c\udff4\u200b\udb40\udc67\u200b\udb40\udc62\u200b\udb40\udc65\u200b\udb40\udc6e\u200b\udb40\udc67\u200b\udb40\udc7f");case"emoji":return!s("\ud83e\udef1\ud83c\udffb\u200d\ud83e\udef2\ud83c\udfff","\ud83e\udef1\ud83c\udffb\u200b\ud83e\udef2\ud83c\udfff")}return!1}(o[r]),t.supports.everything=t.supports.everything&&t.supports[o[r]],"flag"!==o[r]&&(t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&t.supports[o[r]]);t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&!t.supports.flag,t.DOMReady=!1,t.readyCallback=function(){t.DOMReady=!0},t.supports.everything||(n=function(){t.readyCallback()},a.addEventListener?(a.addEventListener("DOMContentLoaded",n,!1),e.addEventListener("load",n,!1)):(e.attachEvent("onload",n),a.attachEvent("onreadystatechange",function(){"complete"===a.readyState&&t.readyCallback()})),(e=t.source||{}).concatemoji?c(e.concatemoji):e.wpemoji&&e.twemoji&&(c(e.twemoji),c(e.wpemoji)))}(window,document,window._wpemojiSettings);
</script>
<style>
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 0.07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
.alertcoment{
  font-size: small;
}
.pimg{
  height:50px;
  width: 60px;
}
.titleform{
  margin-bottom: 20px;
}

</style>
<link rel='stylesheet' id='wp-block-library-css' href='./CSS/block-libarary.css?ver=6.2.4' media='all' />
<link
rel="stylesheet"
id="classic-theme-styles-css"
href="${pageContext.request.contextPath }/resources/CSS/classic-themes.css?ver=6.2.4"
media="all"
/>


<style id='global-styles-inline-css'>
body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url('#wp-duotone-dark-grayscale');--wp--preset--duotone--grayscale: url('#wp-duotone-grayscale');--wp--preset--duotone--purple-yellow: url('#wp-duotone-purple-yellow');--wp--preset--duotone--blue-red: url('#wp-duotone-blue-red');--wp--preset--duotone--midnight: url('#wp-duotone-midnight');--wp--preset--duotone--magenta-yellow: url('#wp-duotone-magenta-yellow');--wp--preset--duotone--purple-green: url('#wp-duotone-purple-green');--wp--preset--duotone--blue-orange: url('#wp-duotone-blue-orange');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;--wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);--wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);--wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);--wp--preset--shadow--outlined: 6px 6px 0px -3px rgba(255, 255, 255, 1), 6px 6px rgba(0, 0, 0, 1);--wp--preset--shadow--crisp: 6px 6px 0px rgba(0, 0, 0, 1);}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}
.wp-block-navigation a:where(:not(.wp-element-button)){color: inherit;}
:where(.wp-block-columns.is-layout-flex){gap: 2em;}
.wp-block-pullquote{font-size: 1.5em;line-height: 1.6;}
</style>
<link rel='stylesheet' id='w3layouts-style-css' href='./CSS/wp-content-style.css?ver=1.0.0' media='all' />
<link rel='stylesheet' id='fm-frontend-css' href='./CSS/wp-content-foodmenu.css?ver=5.0.5' media='all' />
<link rel='stylesheet' id='recent-posts-widget-with-thumbnails-public-style-css' href='./CSS/wp-content-public.css?ver=7.1.1' media='all' />
<link rel="https://api.w.org/" href="https://wp.w3layouts.com/dressup/wp-json/" /><link rel="alternate" type="application/json" href="https://wp.w3layouts.com/dressup/wp-json/wp/v2/pages/15" /><link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://wp.w3layouts.com/dressup/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://wp.w3layouts.com/dressup/wp-includes/wlwmanifest.xml" />
<meta name="generator" content="WordPress 6.2.4" />
<link rel="canonical" href="https://wp.w3layouts.com/dressup/contact-page/" />
<link rel='shortlink' href='https://wp.w3layouts.com/dressup/?p=15' />
<link rel="alternate" type="application/json+oembed" href="https://wp.w3layouts.com/dressup/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwp.w3layouts.com%2Fdressup%2Fcontact-page%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://wp.w3layouts.com/dressup/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwp.w3layouts.com%2Fdressup%2Fcontact-page%2F&#038;format=xml" />
<style>.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style></head>

<body id="top-gap-fixed-header" class="page-template page-template-page-templates page-template-template-contactpage page-template-page-templatestemplate-contactpage-php page page-id-15">
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-dark-grayscale"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 0.49803921568627" /><feFuncG type="table" tableValues="0 0.49803921568627" /><feFuncB type="table" tableValues="0 0.49803921568627" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-grayscale"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 1" /><feFuncG type="table" tableValues="0 1" /><feFuncB type="table" tableValues="0 1" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-purple-yellow"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.54901960784314 0.98823529411765" /><feFuncG type="table" tableValues="0 1" /><feFuncB type="table" tableValues="0.71764705882353 0.25490196078431" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-blue-red"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 1" /><feFuncG type="table" tableValues="0 0.27843137254902" /><feFuncB type="table" tableValues="0.5921568627451 0.27843137254902" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-midnight"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0 0" /><feFuncG type="table" tableValues="0 0.64705882352941" /><feFuncB type="table" tableValues="0 1" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-magenta-yellow"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.78039215686275 1" /><feFuncG type="table" tableValues="0 0.94901960784314" /><feFuncB type="table" tableValues="0.35294117647059 0.47058823529412" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-purple-green"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.65098039215686 0.40392156862745" /><feFuncG type="table" tableValues="0 1" /><feFuncB type="table" tableValues="0.44705882352941 0.4" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0" height="0" focusable="false" role="none" style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;" ><defs><filter id="wp-duotone-blue-orange"><feColorMatrix color-interpolation-filters="sRGB" type="matrix" values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " /><feComponentTransfer color-interpolation-filters="sRGB" ><feFuncR type="table" tableValues="0.098039215686275 1" /><feFuncG type="table" tableValues="0 0.66274509803922" /><feFuncB type="table" tableValues="0.84705882352941 0.41960784313725" /><feFuncA type="table" tableValues="1 1" /></feComponentTransfer><feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg>	
	<header id="site-header" class="main-header fixed-top">
		<div class="container w3HeaderLogoEd">
      <div id="navbar"></div>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script>
        $("#navbar").load("navbar.html");
      </script>
		</div>
	</header>
<!-- inner banner -->
<section class="inner-banner py-5">
  <style>
    .inner-banner {
      background-image: url(https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/images/b3.jpg);
    }
  </style>
  <div class="w3l-breadcrumb py-lg-5">
    <div class="container pt-4 pb-sm-4 ContactPageBanner">

                  <h4 class="inner-text-title font-weight-bold pt-sm-5 pt-4">
        Contact Us</h4>
      
                  <ul class="breadcrumbs-custom-path AllBreadcrumbs">
        <a href="https://wp.w3layouts.com/dressup" rel="nofollow">Home</a>&nbsp;&nbsp;&#187;&nbsp;&nbsp;Contact page      </ul>
          </div>
  </div>
</section>
<!-- //inner banner -->




<!-- contact section -->
<section class="w3l-contact-11 py-5" id="contact">

  <!-- contact Details -->

  <section>
      </section>

      <div class="container ContactPageDetails">
    <h3 class="title-style text-center">
     ê²ìí<span>ì ìì ë¡­ê² ê¸ì ìì±í´ì£¼ì¸ì!</span></h3>

    <div class="row text-center mb-5 justify-content-center">


      
    </div>
  </div>
  
  <section>
      </section>

  <!-- //contact Details -->



  <!-- Contact Form section -->

  <section>
      </section>

      <div class="container ContactPageForm pb-5">
    <div class="form-inner-cont mx-auto" style="max-width:800px">
      

      <form action="" method="post" class="signin-form">
        
        <div class="row align-form-map">
          <!-- <div class="col-sm-6 form-input">
            <input type="text" name="w3lName" id="w3lName"
              placeholder="Name" />
          </div> -->
          <div class="titleform">
            <input type="text" name="w3lSender" id="w3lSender"
              placeholder="ì ëª©ì ìë ¥í´ì£¼ì¸ì" required="" />
          </div>

          <div class="mb-3">
            <div class="form-label"><span class="alertcoment">ì¬ë¬ê°ì íì¼ì ëëê·¸ë¡ ì íí´ì£¼ì¸ì.</span></div>
            <input class=" form-control" type="file" id="formFileMultiple" multiple>
           
            <div class="">
              <img class="pimg" src="https://i.namu.wiki/i/FtTSCMJEbvtx5oHTUeTRrN9zi09OLC-4y9qoy46xOIwL87DF7iuhdr20THxiZQnoDalgvlJhYXv2_Mv2f9HXlHqJcjb7QTDJ4a0-Te1-x-eztR6uyP0-kAODTPEb1M3Z2cY2azLJg02OuQzQcQw3bg.webp" alt="">
              <img class="pimg" src="https://i.namu.wiki/i/FtTSCMJEbvtx5oHTUeTRrN9zi09OLC-4y9qoy46xOIwL87DF7iuhdr20THxiZQnoDalgvlJhYXv2_Mv2f9HXlHqJcjb7QTDJ4a0-Te1-x-eztR6uyP0-kAODTPEb1M3Z2cY2azLJg02OuQzQcQw3bg.webp" alt="">
  
            </div>
          </div>

  

          <!-- <div class="col-sm-6 form-input">
            <input type="number" name="w3lPhone"
              placeholder="Phone Number" class="contact-input">
          </div> -->

        </div>
        <div class="boardContent form-input">
          <textarea placeholder="ë´ì©ì ìë ¥í´ì£¼ì¸ì."
            name="w3lMessage" id="w3lMessage" required=""></textarea>
        </div>
        <div class="submit text-right">
          <button type="submit" class="btn btn-style">ìì±</button>
        </div>
      </form>
    </div>
  </div>
  
  <section>
      </section>

  <!-- /Contact Form section -->


  </div>
</section>



<!-- Contact Map section -->

<section>
  </section>

<!-- <div class="map ContactPageMap text-center">
  <iframe
    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d317718.69319292053!2d-0.3817765050863085!3d51.528307984912544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8a00baf21de75%3A0x52963a5addd52a99!2sLondon%2C+UK!5e0!3m2!1sen!2spl!4v1562654563739!5m2!1sen!2spl"
    width="100%" height="400" frameborder="0" style="border: 0px;" allowfullscreen=""></iframe>
</div> -->

<section>
  </section>

<!-- //Contact Map section -->

<!-- //contact section -->







<!-- footer -->

<footer class="w3l-footer-16 py-5">
    <!-- <div class="container pt-md-5 pt-sm-4 pb-sm-2 DressUpFooter">
        <div class="row">

            <div class="col-lg-4">
                <a class="footer-logo d-flex align-items-center" href="index.html">
                Dress<span>-Up</span></a>
                <p class="mt-3">Nam libero tempore, cum soluta nobis est elige endi optio cumque nihil impedit quo minus id quod maxime placeat facere. Istee natuser iumedolo
                    ladase.</p>

                                                
                <div class="columns-2 mt-4 FooterSocial">
                    <ul class="social">

                                                                            <li><a href="https://www.facebook.com/w3layouts/"><i class="fab fa-facebook-f"></i></a>
                            </li>
                        
                                                                            <li><a href="https://linkedin.com/W3layouts"><i class="fab fa-linkedin-in"></i></a>
                            </li>
                        
                                                                            <li><a href="https://twitter.com/W3layouts"><i class="fab fa-twitter"></i></a>
                            </li>
                        
                                                                            <li><a href="https://google.com/W3layouts"><i class="fab fa-google-plus-g"></i></a>
                            </li>
                        
                                                                            <li><a href="https://github.com/W3layouts"><i class="fab fa-github"></i></a>
                            </li>
                                          
                                                
                    </ul>
                </div>
                
            </div>

            <div class="col-lg-5 mt-lg-0 mt-5">

                <div class="row">

                    <div class="col-xl-5 col-6 column">

                                                                        <h3 class="FooterMenuTitle">
                            Quick Links</h3>
                        
                                            </div>


                                                                <div class="col-xl-5 col-6 column px-xxl-0 FooterContactInfo">
                        <h3 class="">Contact Info</h3>
                        <ul class="footer-contact-list">


                                                                            <li class="">10001, 5th Avenue, #32841 block, USA</li>
                        
                                                                            <li class="mt-2"><a href="tel:+1223 456 790">+1223 456 790</a></li>
                                                                                    
                                                                            <li class="mt-2"><a href="/cdn-cgi/l/email-protection#80e9eee6efc0e5f8e1edf0ece5aee3efed"><span class="__cf_email__" data-cfemail="31585f575e715449505c415d541f525e5c">[email&#160;protected]</span></a></li>
                                                    
                                                                            <li class="mt-2"><a href="/cdn-cgi/l/email-protection#d2a5a5a5fcb7aab3bfa2beb7fcb1bdbf">www.example.com</a></li>
                                                                               
                        </ul>
                    </div>
                        
                </div>

            </div>

                                    <div class="col-lg-3 col-md-7 col-8 column mt-lg-0 mt-4 FooterWorkingHours">
                <h3 class="">Opening Hours</h3>
                <ul class="list-footer-block">
                    <li>
                    Monday <span>9:00 - 18:00</span>                    </li>
                    <li>
                    tuesday <span>10:00 - 19:00</span>                    </li>
                    <li>
                    Wednesday <span>8:00 - 17:00</span>                    </li>
                    <li>
                    Thursday <span>10:00 - 19:00</span>                    </li>
                    <li>
                    Friday <span>10:00 - 19:00</span>                    </li>
                    <li>
                    Saturday <span>10:00 - 19:00</span>                    </li>
                    <li>
                    Sunday <span>closed</span>                    </li>
                </ul>
            </div>
                    </div>


         copyright
                        <div class="below-section text-center pt-4 mt-5">
            <p class="copy-text CopyRights">&copy; 2024                Dress-Up.                All Rights Reserved |
                                                WordPress Theme by                <a href="https://w3layouts.com/">
                    W3Layouts.                </a>
                            </p>
        </div>
                 //copyright

    </div> -->

</footer>

<!-- //footer -->


<!-- Js scripts -->
<!-- move top -->
<button onclick="topFunction()" id="movetop" title="Go to top">
    <span class="fas fa-level-up-alt" aria-hidden="true"></span>
</button>
<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function () {
        scrollFunction()
    };

    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            document.getElementById("movetop").style.display = "block";
        } else {
            document.getElementById("movetop").style.display = "none";
        }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
</script>
<!-- //move top -->

<!-- common jquery plugin -->
<script src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/jquery-3.3.1.min.js"></script>
<!-- //common jquery plugin -->

<!-- banner slick slider -->
<script src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/slick.js"></script>
<script src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/script.js"></script>
<!-- //banner slick slider -->

<!-- magnific-popup javascript -->
<script src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/jquery.magnific-popup.min.js"></script>
<script>
    $(document).ready(function () {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',

            fixedContentPos: false,
            fixedBgPos: true,

            overflowY: 'auto',

            closeBtnInside: true,
            preloader: false,

            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

        $('.popup-with-move-anim').magnificPopup({
            type: 'inline',

            fixedContentPos: false,
            fixedBgPos: true,

            overflowY: 'auto',

            closeBtnInside: true,
            preloader: false,

            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-slide-bottom'
        });
    });
</script>
<!-- //magnific-popup javascript -->

<!-- theme switch js (light and dark)-->
<script src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/theme-change.js"></script>
<!-- //theme switch js (light and dark)-->

<!-- MENU-JS -->
<script>
    $(window).on("scroll", function () {
        var scroll = $(window).scrollTop();

        if (scroll >= 80) {
            $("#site-header").addClass("nav-fixed");
        } else {
            $("#site-header").removeClass("nav-fixed");
        }
    });

    //Main navigation Active Class Add Remove
    $(".navbar-toggler").on("click", function () {
        $("header").toggleClass("active");
    });
    $(document).on("ready", function () {
        if ($(window).width() > 991) {
            $("header").removeClass("active");
        }
        $(window).on("resize", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
        });
    });
</script>
<!-- //MENU-JS -->

<!-- disable body scroll which navbar is in active -->
<script>
    $(function () {
        $('.navbar-toggler').click(function () {
            $('body').toggleClass('noscroll');
        })
    });
</script>
<!-- //disable body scroll which navbar is in active -->

<!-- bootstrap -->
<script src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/bootstrap.min.js"></script>
<!-- //bootstrap -->
<!-- //Js scripts -->



<script src='https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/js/navigation.js?ver=1.0.0' id='w3layouts-navigation-js'></script>

</body>

</html>
<!-- Cache served by breeze CACHE - Last modified: Tue, 12 Mar 2024 04:16:08 GMT -->
