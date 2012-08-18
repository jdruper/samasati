<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index-6.aspx.cs" Inherits="SamasatiYoga.Main.index_6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">

    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>

    <script type="text/javascript" src="js/cufon-yui.js"></script>

    <script type="text/javascript" src="js/cufon-replace.js"></script>

    <script type="text/javascript" src="js/Caviar_Dreams_500.font.js"></script>

    <script type="text/javascript" src="js/flashobject.js"></script>

    <!--[if lt IE 7]>
     <script type="text/javascript" src="http://info.template-help.com/files/ie6_warning/ie6_script.js"></script>
    <![endif]-->
    <!--[if lt IE 9]>
  	<script type="text/javascript" src="js/html5.js"></script>
  <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="head">
            <div class="alignCenter">
                <a href="http://www.adobe.com/go/EN_US-H-GET-FLASH">
                    <img src="http://www.adobe.com/images/shared/download_buttons/get_adobe_flash_player.png"
                        alt="" /></a></div>
        </div>

        <script type="text/javascript">
            var fo = new FlashObject("flash/logo_v8.swf", "head", "100%", "141", "7", "");
            fo.addParam("quality", "high");
            fo.addParam("wmode", "transparent");
            fo.addParam("scale", "noscale");
            fo.write("head");
        </script>

        <script language="JavaScript">
            function resetForm() {
                document.getElementById("formIndex6").reset();
            } 
        </script>

        <div id="main">
            <header>
            <div class="inside">
                <div class="container">
                    <div id="head1">
                        <div class="alignCenter"><a href="http://www.adobe.com/go/EN_US-H-GET-FLASH"><img src="http://www.adobe.com/images/shared/download_buttons/get_adobe_flash_player.png" alt="" /></a></div>
                    </div>
                    <script type="text/javascript">
                        var fo = new FlashObject("flash/menu_v8.swf?button=7", "head1", "100%", "122", "7", "");
                        fo.addParam("quality", "high");
                        fo.addParam("wmode", "transparent");
                        fo.addParam("scale", "noscale");
                        fo.write("head1");
                    </script>
                </div>                              
                <div class=" container">
                    <div id="head2">
                        <div class="alignCenter"><a href="http://www.adobe.com/go/EN_US-H-GET-FLASH"><img src="http://www.adobe.com/images/shared/download_buttons/get_adobe_flash_player.png" alt="" /></a></div>
                    </div>
                    <script type="text/javascript">
                        var fo = new FlashObject("flash/header_v8.swf", "head2", "100%", "351", "7", "");
                        fo.addParam("quality", "high");
                        fo.addParam("wmode", "transparent");
                        fo.addParam("scale", "noscale");
                        fo.write("head2");
                    </script>
                </div>               
            </div>
        </header>
            <div class="bg-cont">
                <div class="inside">
                    <div class="container">
                        <aside>
                       <!-- <h2>Departments</h2>
                        Customer Service:
                        <p class="block-contact"><span> +1 959 603 6035</span>Tel.:<br>          
                        <span>+1 101 889 9898</span>FAX:<br>          
                        <a href="#" class="link1">customers@demolink.org</a></p>                        
                        Network planning service:
                        <p class="block-contact"><span>+1 959 603 6035</span>Tel.:<br>           
                        <span>+1 101 889 9898</span>FAX: <br>         
                       	<a href="#" class="link1"> planning@demolink.org</a></p>-->
                        <h2>Contact form</h2>
                        <!--<h4>Lorem ipsum dolor sit amet, consectetuer </h4>-->
                        <!--<p>Consectetuer adipiscing elit. Praesent vestibulum olestie lacus. Aenean nonummy.</p>-->
                        <form action= id="formIndex6">
                          <fieldset>
                          <div class="rowElem">
                             <asp:TextBox  ID="txtName"  runat="server" Text="Name: "  onblur="if(this.value=='') this.value='Name: '" onfocus="if(this.value =='Name: ' ) this.value=''"></asp:TextBox>
                          </div>
                          <div class="rowElem">
                             <asp:TextBox ID="txtEmail" runat="server" Text="E-mail: " onblur="if(this.value=='') this.value='E-mail:'" onfocus="if(this.value =='E-mail:' ) this.value=''" ></asp:TextBox>
                          </div>  
                          <div class="rowElem1">
                             <textarea rows="40" cols="30"  onblur="if(this.value=='') this.value='Message:'" onFocus="if(this.value =='Message:' ) this.value=''"  >Message:</textarea>
                          </div>
                          </div>
                                
                          <div class="fright">
                          		<div class="container"><a href="#" onClick="document.getElementById('form').reset()" class="link">clear</a> &nbsp; &nbsp;<a href="" onClick="document.getElementById('form').submit()" class="link">send</a></div>
                          </div>
                          </fieldset>
                       </form>
                    </aside>
                        <section id="content">
                        <div class="indent">
                            <h2 class="color1">Be in touch:</h2>
                            <article>
                               <div class="container">
                                    <img alt="" src="images/7page_img1.jpg" class="img-left" />
                                    <h4>We will be happy to answer any question you may have and assist you in choosing a program that fits your schedule and reserving your spot!</h4>
                                    <!--8901 Marmora Road, Glasgow, D04 89GR.-->
                                    <p class="block-contact1">
                                    <span><a href="callto://+18005639643" class="link1">+1 800 563 9643</a></span>Toll free number (USA):<br>
                                    <span><a href="callto://+50622241870" class="link1">+506 2224 1870</a></span>Costa Rica phone number:<br>      
                                    <span>+506 2224 5032</span>Fax:<br>
                                    E-mail: <a href="mailto:info@samasatiyoga.com" class="link1">info@samasatiyoga.com</a></p>
                                    E-mail: <a href="mailto:reservations@samasatiyoga.com" class="link1">reservations@samasatiyoga.com</a></p>
                                    <br>
                                    <p>We look forward hearing from you!<br> Namaste</p>
                                    <br class="clear" />
                                </div>
                            </article>
                        </div> 
<!--                        <div class="box">
                            <div class="border-top">
                                <div class="border-bottom">
                                    <div class="border-right">
                                        <div class="border-left">
                                            <div class="corner-top-right">
                                                <div class="corner-top-left">
                                                    <div class="corner-bottom-left">
                                                        <div class="corner-bottom-right"> 
                                                            <div class="indent-box">
                                                                <h2 class="color2">External Links</h2>
                                                                <div class="container"><div class="indent4"><ul class="list1 fright">
                                                                    <li><a href="#">Available</a></li>
                                                                    <li><a href="#">Available</a></li>
                                                                    <li><a href="#">Available</a></li>
                                                                    <li><a href="#">Available</a></li>
                                                                </ul>
                                                                <ul class="list1 fleft">
                                                                    <li><a href="www.samasati.com">Samasati Nature Retreat</a></li>
                                                                    <li><a href="#">Available</a></li>
                                                                    <li><a href="#">Available</a></li>
                                                                    <li><a href="#">Available</a></li>
                                                                </ul></div></div>
                                                            </div>                                     
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>--> 
                        <div class="indent1"><div class="indent">
                            <h2 class="color1">Our location</h2>
                            <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.es/maps?f=q&amp;source=s_q&amp;hl=es&amp;geocode=&amp;q=Samasati+Nature+Retreat,+Limon,+Costa+Rica&amp;aq=1&amp;oq=samasa&amp;sll=40.396764,-3.713379&amp;sspn=8.130742,21.643066&amp;ie=UTF8&amp;hq=Samasati+Nature+Retreat,&amp;hnear=Lim%C3%B3n,+Costa+Rica&amp;ll=9.654908,-82.806101&amp;spn=0.657803,1.352692&amp;t=m&amp;z=10&amp;iwloc=A&amp;cid=2378802529330389577&amp;output=embed"></iframe><br /><small><a href="http://maps.google.es/maps?f=q&amp;source=embed&amp;hl=es&amp;geocode=&amp;q=Samasati+Nature+Retreat,+Limon,+Costa+Rica&amp;aq=1&amp;oq=samasa&amp;sll=40.396764,-3.713379&amp;sspn=8.130742,21.643066&amp;ie=UTF8&amp;hq=Samasati+Nature+Retreat,&amp;hnear=Lim%C3%B3n,+Costa+Rica&amp;ll=9.654908,-82.806101&amp;spn=0.657803,1.352692&amp;t=m&amp;z=10&amp;iwloc=A&amp;cid=2378802529330389577" style="color:#0000FF;text-align:left">See map</a></small>
                            <!--<article>
                               <h4 class="p">Argentina</h4>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. </p>
                                <h4 class="p">Denmark</h4> 
                                <p>Morbi nunc odio, gravida at, cursus nec, luctus a, lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna. Donec accumsan malesuada orci. Donec sit amet eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris fermentum dictum magna.</p>
                                <h4 class="p">Finland</h4> 
                                Quisque nulla. Vestibulum libero nisl, porta vel, scelerisque eget, malesuada neque. Vivamus<br>
                                 eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros.
                            </article>-->
                        </div> </div>
                    </section>
                    </div>
                </div>
            </div>
            <footer>      
            <div class="bot-left">
                <div class="bot-right">
                    <div class="inside">
                        <div class="fright"><!--{%FOOTER_LINK}--></div>
                        <div class="fleft"><span>samasatiyoga.com</span> &nbsp;&copy; 2012 &nbsp;| &nbsp;</div>
                        <ul>
                            <li><a href="http://www.facebook.com/pages/Samasati/111718732178595"><img alt="" src="images/icon1.gif" /></a></li>
                            <!--<li><a href="#"><img alt="" src="images/icon2.gif" /></a></li>-->
                            <li><a href="https://twitter.com/Samasati"><img alt="" src="images/icon3.gif" /></a></li>
                            <li><a href="http://www.stumbleupon.com/submit?url=www.samasatiyoga.com&title=Samasati Yoga"><img alt="" src="images/icon4.gif" /></a></li>
                        </ul>
                    </div>
                </div>
            </div>   
        </footer>
        </div>
    </div>
    </form>
</body>
</html>
