/**
 * Alertify
 * An unobtrusive customizable JavaScript notification system
 *
 * @author Fabien Doiron <fabien.doiron@gmail.com>
 * @copyright Fabien Doiron 2012
 * @license MIT <http://opensource.org/licenses/mit-license.php>
 * @link http://www.github.com/fabien-d
 * @module Alertify
 * @version 0.2.11
 */
/*global define*/
(function(e,t){"use strict";var n=e.document,r;r=function(){var r,i,s,o,u,a,f,l,c,h;return o={buttons:{holder:'<nav class="alertify-buttons">{{buttons}}</nav>',submit:'<button type="submit" class="alertify-button alertify-button-ok" id="alertify-ok" />{{ok}}</button>',ok:'<a href="#" class="alertify-button alertify-button-ok" id="alertify-ok">{{ok}}</a>',cancel:'<a href="#" class="alertify-button alertify-button-cancel" id="alertify-cancel">{{cancel}}</a>'},input:'<input type="text" class="alertify-text" id="alertify-text">',message:'<p class="alertify-message">{{message}}</p>',log:'<article class="alertify-log{{class}}">{{message}}</article>'},f={ENTER:13,ESC:27,SPACE:32},h=[],a=!1,r=function(e){return n.getElementById(e)},i={labels:{ok:"OK",cancel:"Cancel"},delay:5e3,addListeners:function(i){var s=r("alertify-resetFocus"),o=r("alertify-ok")||t,u=r("alertify-cancel")||t,a=r("alertify-text")||t,l=r("alertify-form")||t,c=typeof o!="undefined",h=typeof u!="undefined",p=typeof a!="undefined",d="",v=this,m,g,y,b,w;m=function(e){typeof e.preventDefault!="undefined"&&e.preventDefault(),y(e),typeof a!="undefined"&&(d=a.value),typeof i=="function"&&i(!0,d)},g=function(e){typeof e.preventDefault!="undefined"&&e.preventDefault(),y(e),typeof i=="function"&&i(!1)},y=function(e){v.hide(),v.unbind(n.body,"keyup",b),v.unbind(s,"focus",w),p&&v.unbind(l,"submit",m),c&&v.unbind(o,"click",m),h&&v.unbind(u,"click",g)},b=function(e){var t=e.keyCode;t===f.SPACE&&!p&&m(e),t===f.ESC&&h&&g(e)},w=function(e){p?a.focus():h?u.focus():o.focus()},this.bind(s,"focus",w),c&&this.bind(o,"click",m),h&&this.bind(u,"click",g),this.bind(n.body,"keyup",b),p&&this.bind(l,"submit",m),e.setTimeout(function(){a?(a.focus(),a.select()):o.focus()},50)},bind:function(e,t,n){typeof e.addEventListener=="function"?e.addEventListener(t,n,!1):e.attachEvent&&e.attachEvent("on"+t,n)},build:function(e){var t="",n=e.type,r=e.message;t+='<div class="alertify-dialog">',n==="prompt"&&(t+='<form id="alertify-form">'),t+='<article class="alertify-inner">',t+=o.message.replace("{{message}}",r),n==="prompt"&&(t+=o.input),t+=o.buttons.holder,t+="</article>",n==="prompt"&&(t+="</form>"),t+='<a id="alertify-resetFocus" class="alertify-resetFocus" href="#">Reset Focus</a>',t+="</div>";switch(n){case"confirm":t=t.replace("{{buttons}}",o.buttons.cancel+o.buttons.ok),t=t.replace("{{ok}}",this.labels.ok).replace("{{cancel}}",this.labels.cancel);break;case"prompt":t=t.replace("{{buttons}}",o.buttons.cancel+o.buttons.submit),t=t.replace("{{ok}}",this.labels.ok).replace("{{cancel}}",this.labels.cancel);break;case"alert":t=t.replace("{{buttons}}",o.buttons.ok),t=t.replace("{{ok}}",this.labels.ok);break;default:}return u.className="alertify alertify-show alertify-"+n,s.className="alertify-cover",t},close:function(e,t){var n=t&&!isNaN(t)?+t:this.delay;this.bind(e,"click",function(){c.removeChild(e)}),setTimeout(function(){typeof e!="undefined"&&e.parentNode===c&&c.removeChild(e)},n)},dialog:function(e,t,n,r){var i=function(){if(u&&u.scrollTop!==null)return;i()};if(typeof e!="string")throw new Error("message must be a string");if(typeof t!="string")throw new Error("type must be a string");if(typeof n!="undefined"&&typeof n!="function")throw new Error("fn must be a function");return typeof this.init=="function"&&(this.init(),i()),h.push({type:t,message:e,callback:n,placeholder:r}),a||this.setup(),this},extend:function(e){return function(t,n){this.log(t,e,n)}},hide:function(){h.splice(0,1),h.length>0?this.setup():(a=!1,u.className="alertify alertify-hide alertify-hidden",s.className="alertify-cover alertify-hidden")},init:function(){n.createElement("nav"),n.createElement("article"),n.createElement("section"),s=n.createElement("div"),s.setAttribute("id","alertify-cover"),s.className="alertify-cover alertify-hidden",n.body.appendChild(s),u=n.createElement("section"),u.setAttribute("id","alertify"),u.className="alertify alertify-hidden",n.body.appendChild(u),c=n.createElement("section"),c.setAttribute("id","alertify-logs"),c.className="alertify-logs",n.body.appendChild(c),delete this.init},log:function(e,t,n){var r=function(){if(c&&c.scrollTop!==null)return;r()};return typeof this.init=="function"&&(this.init(),r()),this.notify(e,t,n),this},notify:function(e,t,r){var i=n.createElement("article");i.className="alertify-log"+(typeof t=="string"&&t!==""?" alertify-log-"+t:""),i.innerHTML=e,c.insertBefore(i,c.firstChild),setTimeout(function(){i.className=i.className+" alertify-log-show"},50),this.close(i,r)},set:function(e){var t;if(typeof e!="object"&&e instanceof Array)throw new Error("args must be an object");for(t in e)e.hasOwnProperty(t)&&(this[t]=e[t])},setup:function(){var e=h[0];a=!0,u.innerHTML=this.build(e),typeof e.placeholder=="string"&&(r("alertify-text").value=e.placeholder),this.addListeners(e.callback)},unbind:function(e,t,n){typeof e.removeEventListener=="function"?e.removeEventListener(t,n,!1):e.detachEvent&&e.detachEvent("on"+t,n)}},{alert:function(e,t){return i.dialog(e,"alert",t),this},confirm:function(e,t){return i.dialog(e,"confirm",t),this},extend:i.extend,init:i.init,log:function(e,t,n){return i.log(e,t,n),this},prompt:function(e,t,n){return i.dialog(e,"prompt",t,n),this},success:function(e,t){return i.log(e,"success",t),this},error:function(e,t){return i.log(e,"error",t),this},set:function(e){i.set(e)},labels:i.labels}},typeof define=="function"?define([],function(){return new r}):typeof e.alertify=="undefined"&&(e.alertify=new r)})(this);