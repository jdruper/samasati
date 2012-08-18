<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SamasatiYoga.Main.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Samasati Yoga</title>
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all" />
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="all" />
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />

    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>

    <script type="text/javascript" src="js/cufon-yui.js"></script>

    <script type="text/javascript" src="js/cufon-replace.js"></script>

    <script type="text/javascript" src="js/Caviar_Dreams_500.font.js"></script>

    <script type="text/javascript" src="js/flashobject.js"></script>

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
                document.getElementById("formIndex").reset();
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
                        var fo = new FlashObject("flash/menu_v8.swf?button=1", "head1", "100%", "122", "7", "");
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
                        <h2>Services</h2>
                        <div class="p1 container1"><ul class="list">
                            <li><a href="index-2.html">200 RYT Professional Trainings</a></li>
                            <li><a target="_blank" href="http://www.hariomyogaschool.com/500-hr-tt-costa-rica-registration-form">500 RYT Professional Trainings</a> </li>
                            <li><a href="index-4.html">Yoga retreats</a></li>
                            <li><a href="index-8.html">Yoga Classes</a></li>
                        </ul></div>
                        <h2>Our Allies</h2>
                        <p>
                        <a href="http://www.samasati.com/" target="_blank"> <img alt="Samasati Nature Retreat" src="images/Banner_Samasati.jpg"/> </a> 
                        </p>                        
                        <!--<p class="p2"><a href="#">01.06.2012</a></p>-->
                        <!--<h4>Hari om </h4>-->
                        <!--<p class="p3">Info and banner</p>-->
                        <p>
                        <a href="http://www.hariomyogaschool.com" target="_blank"> <img alt="Hari Om Yoga School" src="images/Banner_Hariom.jpg"/> </a> 
                        </p>
                        
                        <p>
                        <a href="http://www.peakbeings.com" target="_blank"> <img alt="Peak Beings" src="images/Banner_PeakBeings.jpg"/> </a> 
                        </p>
                        
                        <p>
                        <a href="http://www.shivashaktiyogaschool.com" target="_blank"> <img alt="Shiva Shakti Yoga School" src="images/Banner_ShivaShakti.jpg"/> </a> 
                        </p>
                        
                        <!--class="img-right" -->
                        <!--<p class="p2"><a href="#">01.06.2012</a></p>-->
                                          
                        <p> <br/> </p>
                        <h2>Join our mailing list</h2>
                        <!--<p class="p3">Detailed information about it</p>-->
                        <form id="formIndex">
                          <fieldset>
                          <div class="rowElem">
                             <asp:TextBox  ID="txtName"  runat="server" Text="Name: "  onblur="if(this.value=='') this.value='Name: '" onfocus="if(this.value =='Name: ' ) this.value=''"></asp:TextBox>
                          </div>
                          <div class="rowElem">
                             <asp:TextBox ID="txtEmail" runat="server" Text="E-mail: " onblur="if(this.value=='') this.value='E-mail:'" onfocus="if(this.value =='E-mail:' ) this.value=''" ></asp:TextBox>
                          </div>

<!--                          <div class="rowElem1">
                             <textarea rows="40" cols="30"  onblur="if(this.value=='') this.value='Message:'" onFocus="if(this.value =='Message:' ) this.value=''"  >Message:</textarea>
                          </div>                          
-->                          
                            <div class="fright">
                          		<div class="container">
                          		<!--<a href="#" onClick="formReset()" class="link">clear</a> &nbsp; &nbsp;-->
                          		<a class="link" onclick="resetForm()" >clear</a>&nbsp; &nbsp;
                                <asp:LinkButton class="link" ID="btnSubmit" runat="server"  OnClick="btnSubmit_Click">send</asp:LinkButton>
                                </div>
                          		<!--document.getElementById('formIndex').reset()--><br />
                          		
                          </div>
                          </fieldset>
                       </form>
                        <!--<a href="#" class="link">details</a>-->
                    </aside>
                        <section id="content">
                        <div class="indent">
                            <h2 class="color1">Welcome to Samasati Yoga</h2>
                            <article>
                               <p>The longest established Yoga Center on the Caribbean side of Costa Rica.</p>
                               <p>Perched on a hill-top, with a spectacular view of the Caribbean Sea, <a href="http://www.samasati.com" target="_blank">Samasati</a> is an astoundingly conducive environment that supports retreats,workshops and trainings to be transformative, nurturing and unforgettable. <a href="http://www.samasati.com" target="_blank" >Samasati</a> offers an extraordinary setting for all who are looking to sustainable living, personal transformation and wellness of body, mind and spirit as well as all who are looking to transform their passion for yoga into a profession becoming trained Yoga teachers.</p>
<!--                           <br>    <br>.--> 
<!--                                <p class="p3"><a href="#" class="link">more info</a></p>-->
                            </article>
                        </div> 
                        <div class="box">
                            <div class="border-top">
                                <div class="border-bottom">
                                    <div class="border-right">
                                        <div class="border-left">
                                            <div class="corner-top-right">
                                                <div class="corner-top-left">
                                                    <div class="corner-bottom-left">
                                                        <div class="corner-bottom-right"> 
                                                            <div class="indent-box">
                                                                <h2 class="color2">Yoga Schools</h2>
                                                                <div class="container">
                                                                    <img alt="" src="images/1page_img1.jpg" class="img-right" />
                                                                    <!--<h4>Title 
                                                                    <br>
                                                                    linea2 </h4>-->
                                                                    <p>Samasati selects its School partners very carefully to ensure the offerings of comprehensive yoga teacher trainings that integrate
                                                                       not just the physical postures but also philosophy, meditation, pranayama and the complete yogic personal and social code of ethics.
                                                                       Every School is Yoga Alliance Registered.  You will receive the Yoga Alliance certification and be included in its Yoga Teacher directory.<br>
                                                                    <h4>Make your passion your profession while reclaiming your connection with nature!</h4>
                                                                    <br>
                                                                    <p>View Professional trainings upcoming sessions</p>
 </p>
                                                                    <div class="fleft">
                                                                    <a href="index-2.html" class="link">details</a> &nbsp; &nbsp; &nbsp;
                                                                    </div>
                                                                    <!--<div class="indent2">
                                                                    <a href="#"><img alt="" src="images/but1.gif" class="alignMiddle" /></a>
                                                                    <a href="#"><img alt="" src="images/but2.gif" class="alignMiddle" /></a>
                                                                    </div>-->
                                                                    <br class="clear" />
                                                                </div>
                                                            </div>                                     
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="indent1">
                            <div class="box">
                                <div class="border-top">
                                    <div class="border-bottom">
                                        <div class="border-right">
                                            <div class="border-left">
                                                <div class="corner-top-right">
                                                    <div class="corner-top-left">
                                                        <div class="corner-bottom-left">
                                                            <div class="corner-bottom-right"> 
                                                                <div class="indent-box">
                                                                    <h2 class="color2">Yoga Retreats</h2>
                                                                    <div class="container">
                                                                        <img alt="" src="images/1page_img2.jpg" class="img-right" />
                                                                        <p>Samasati is devoted to create a safe space where you can deepen your practice and your knowledge of yoga in all its aspects, in respect and harmony with nature and its healing rhythms. Samasati offers the perfect environment to deepen your practice, or experience yoga for the first time, with a group of like-minded people.</p>
                                                                        <h4>You are invited to explore your practice of yoga, immerse yourself in the Costa Rican culture, and rest and rejuvenate in the beautiful setting of the South Caribbean.</h4>
                                                                        <p>View upcoming Yoga Retreats</p>
                                                                        <div class="fleft">
                                                                        <a href="index-4.html" class="link">details</a> &nbsp; &nbsp; &nbsp;
                                                                        </div>
                                                                        <!--<div class="indent2">
                                                                        <a href="#"><img alt="" src="images/but1.gif" class="alignMiddle" /></a>
                                                                        <a href="#"><img alt="" src="images/but2.gif" class="alignMiddle" /></a>
                                                                        </div>-->
                                                                        <br class="clear" />
                                                                    </div>
                                                                </div>                                     
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
