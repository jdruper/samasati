<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Response</title>
    <link rel="stylesheet" href="../../Main/css/reset.css" type="text/css" media="all" />
    <link rel="stylesheet" href="../../Main/css/layout.css" type="text/css" media="all" />
    <link rel="stylesheet" href="../../Main/css/style.css" type="text/css" media="all" />

    <script type="text/javascript" src="../../Main/js/jquery-1.4.2.min.js"></script>

    <script type="text/javascript" src="../../Main/js/cufon-yui.js"></script>

    <script type="text/javascript" src="../../Main/js/cufon-replace.js"></script>

    <script type="text/javascript" src="../../Main/js/Caviar_Dreams_500.font.js"></script>

    <script type="text/javascript" src="../../Main/js/flashobject.js"></script>

</head>
<body>
    <div class="tail-top">
        <div id="head">
            <div class="alignCenter">
                <a href="http://www.adobe.com/go/EN_US-H-GET-FLASH">
                    <img src="http://www.adobe.com/images/shared/download_buttons/get_adobe_flash_player.png"
                        alt="" /></a></div>
        </div>

        <script type="text/javascript">
            var fo = new FlashObject("../../Main/flash/logo_v8.swf", "head", "100%", "141", "7", "");
            fo.addParam("quality", "high");
            fo.addParam("wmode", "transparent");
            fo.addParam("scale", "noscale");
            fo.write("head");
        </script>

        <div id="main">
            <header>
            
            <div class="inside">
                <div class="container">
                    <div id="head1">
                        <div class="alignCenter"><a href="http://www.adobe.com/go/EN_US-H-GET-FLASH"><img src="http://www.adobe.com/images/shared/download_buttons/get_adobe_flash_player.png" alt="" /></a></div>
                    </div>
                    <script type="text/javascript">
                        var fo = new FlashObject("../../Main/flash/menu_v8.swf?button=6", "head1", "100%", "122", "7", "");
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
                        var fo = new FlashObject("../../Main/flash/header_v8.swf", "head2", "100%", "351", "7", "");
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
                        <h2>Example</h2>
                        <div class="p1 container1"><ul class="list1">
                            <!--<li><a href="#">Praesent vestibu molestie</a></li>-->
                        </ul></div>
                        <h2>Example 1 </h2>
                         <!--<a href="#" class="link">details  </a>                  -->
                        </aside>
                        <section id="content">
                        <div class="indent">                                                    
                            <h2 class="color1">Register Results</h2>
                              <article>
                                  <div class="container">
                                    <%=ViewData["authResponse"] %>
                                    <br class="clear" />
                                  </div>
                              </article>
                              <br class="clear" />                                  
                            <p></p>
                        </div>                    
                    </section>
                </div>
            </div>
        </div>
        <footer>      
            <div class="bot-left">
                <div class="bot-right">
                    <div class="inside">
                        <div class="fright"><!--{%FOOTER_LINK}--></div>
                        <div class="fleft"><span>Hatha</span> &nbsp;&copy; 2010 &nbsp;| &nbsp;<a href="../../Main/index-7.html">Privacy policy</a></div>
                        <ul>
                            <li><a href="#"><img alt="" src="../../Main/images/icon1.gif" /></a></li>
                            <li><a href="#"><img alt="" src="../../Main/images/icon2.gif" /></a></li>
                            <li><a href="#"><img alt="" src="../../Main/images/icon3.gif" /></a></li>
                            <li><a href="#"><img alt="" src="../../Main/images/icon4.gif" /></a></li>
                        </ul>
                    </div>
                </div>
            </div>   
        </footer>
    </div>
    </div>
    <script type="text/javascript">  Cufon.now(); </script>    
</body>
</html>
