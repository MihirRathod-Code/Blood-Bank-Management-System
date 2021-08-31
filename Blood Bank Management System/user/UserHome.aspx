<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="Blood_Bank_Management_System.user.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <div>
    
    <nav class="navbar navbar-inverse"><div>
<div class="mobileLogo"><a href="../user/UserHome.aspx"></a></div>

<div class="mobileButton" data-target="#mobileNav" data-toggle="collapse" style="cursor: pointer;"><img src="../navigationBars.png"></div>
</div>
<div>

</div>
<div id="mobileNav" class="nav navbar-nav collapse">
  <span class="purpleHeader" style="margin-left:15px;">
      <a data-target=" #exampleModal" data-toggle="modal" href="#" class="purpleHeader2"> YOUR LOCATION</a>
  </span>
  <div class="mt-1"></div>
  <ul><li class="navbar-li"><p data-target="#Donate" data-toggle="collapse">Donate</p><div id="Donate" class="collapse navbar-collapse sub-nav-container"><div><ul class="sub-nav"><li><a href="../Donate/Donate-Blood-Overview.html" target="">Donate Blood Overview</a></li><li><a href="../Donate/Donation-Process.html" target="">Donation Process</a></li><li><a href="../Donate/Donor-Eligibility.html" target="">Donor Eligibility</a></li><li><a href="../Donate/Types-of-Donation.html" target="">Types of Donation</a></li><li><a href="../Donate/Blood-Donation/Locations.html" target="">Locations</a></li></ul></div><div><ul class="sub-nav"><li><a href="../Donate/Health-History-Questionnaire.html" target="">Health History Questionnaire</a></li><li><a href="../Donate/Donate-Funds.html" target="">Donate Funds</a></li></ul></div></div></li><li class="navbar-li"><p data-target="#Engage" data-toggle="collapse">Engage</p><div id="Engage" class="collapse navbar-collapse sub-nav-container"><div><ul class="sub-nav"><li><a href="../Engage/Local-Events-Activities.html" target="">Local Events &amp; Activities</a></li><li><a href="../Engage/Host-a-Blood-Drive.html" target="">Host a Blood Drive</a></li><li><a href="../Engage/Partnerships.html" target="">Partnerships</a></li><li><a href="../Engage/Presentations-Tours.html" target="">Presentations &amp; Tours</a></li></ul></div><div><ul class="sub-nav"><li><a href="../Engage/Share-Your-Story.html" target="">Share Your Story</a></li><li><a href="../Donate/Tools-Activities/Donate-Funds.html" target="">Donate Funds</a></li></ul></div></div></li><li class="navbar-li"><p data-target="#Learn" data-toggle="collapse">Learn</p><div id="Learn" class="collapse navbar-collapse sub-nav-container"><div><ul class="sub-nav"><li><a href="../Learn/Blood-Basics.html" target="">Blood Basics</a></li><li><a href="../Learn/National-Blood-Supply.html" target="">National Blood Supply</a></li></ul></div><div><ul class="sub-nav"><li><a href="../About-Us/Research.html" target="">Research</a></li></ul></div></div></li><li class="navbar-li"><p data-target="#AboutUs" data-toggle="collapse">About Us</p><div id="AboutUs" class="collapse navbar-collapse sub-nav-container"><div><ul class="sub-nav"><li><a href="../About-Us/Purpose-Network.html" target="">Purpose &amp; Network</a></li><li><a href="../About-Us/What-We-Offer.html" target="">What We Offer</a></li><li><a href="../About-Us/Our-Impact.html" target="">Our Impact</a></li></ul></div><div><ul class="sub-nav"><li><a href="../About-Us/Research.html" target="">Research</a></li><li><a href="../About-Us/About2/Mission-and-Values.html" target="">Mission &amp; Values</a></li><li><a href="../About-Us/News.html" target="">News</a></li></ul></div></div></li><li class="navbar-li"><p data-target="#ForHospitals" data-toggle="collapse">For Hospitals</p><div id="ForHospitals" class="collapse navbar-collapse sub-nav-container"><div><ul class="sub-nav"><li><a href="../For-Hospitals/Hospital-Partnerships.html" target="">Hospital Partnerships</a></li><li><a href="../For-Hospitals/What-We-Offer.html" target="">What We Offer</a></li></ul></div><div><ul class="sub-nav"><li><a href="../For-Hospitals/Our-Physicians.html" target="">Our Physicians</a></li></ul></div></div></li></ul>
</div></nav>
    
  </div>
  <div id="mainBlock">
      
<div style="position: relative;background-image: url(../bldBank.png);
    height: 350px;background-repeat: no-repeat;background-position: center top;background-size: contain;"> <div style="max-width: 55vw;padding-left: 3vw; padding-top: 5vw;">
<%--<div class="slider-text" style="font-size: 3.4vw; margin-bottom:-2vw;">Help Patients Throughout the COVID-19 Pandemic</div><!-- Transform a life, and your own -->--%>

<div>
    <a href="Donor.aspx">
    <button id="DonateBtnOne" class="btn btnOrange btn-lg" style="margin-left:-1vw; height:70px;width:280px; padding:1vw 1vw; font-size:17px; border-radius: 3rem;"  type="button" data-toggle="modal">SCHEDULE AN APPOINTMENT</button>
    </a>
</div>
    </div>
</div>

<div class="p-3" id="DonateBtnTwo" style="margin-left: auto;margin-right: auto;width:fit-content;"><button class="btn btnOrange btn-lg" style="margin-bottom:2vw;" data-target="#exampleModal" type="button" data-toggle="modal">SCHEDULE AN APPOINTMENT</button></div><style>
a:hover {
color: #e65300;
}
</style>
      <div class="mb-5">
<div class="mx-5 pt-4" style="color:#722282; font-size:1.4em; font-family:FilsonProMedium;">
<ul>
	<li><a href="../COVIDFree.html" style="text-decoration:underline;">Learn about qualifying to donate COVID-19 convalescent plasma</a></li>
	<li>Read our <a href="../COVID-FAQs.html" onmouseout="this.style.color='#722282'" onmouseover="this.style.color='#e65300'" style="color:#722282; text-decoration:underline;">FAQs</a> regarding COVID-19.&nbsp;<a href="../COVID-Info.html" onmouseout="this.style.color='#722282'" onmouseover="this.style.color='#e65300'" style="color: rgb(114, 34, 130); text-decoration: underline;">Do not donate if you are sick: Vitalant does NOT test for COVID-19</a></li>
	<li>At this time, we require both staff and donors to wear a face covering at blood drives or donation centers.</li>
</ul>
</div>
</div>





<div style="background-color:#f0f0f0;">
<div class="row no-gutters mb-4">
<div class="col-lg-7 px-5" style="padding:3vw">
<h2 style="color:#e65300">Actor Daniel Dae Kim promotes COVID-19 plasma donation</h2>

<p class="mt-3">Actor and COVID-19 survivor Daniel Dae Kim recently donated convalescent plasma at a Vitalant blood center. Vitalant rapidly expanded its convalescent plasma program, and nearly all Vitalant donation centers can collect from COVID-19 recovered donors. Convalescent plasma is currently the only antibody treatment available to help COVID-19 patients now battling the disease.<br>
<br>
If you’ve tested positive for COVID-19 and are now healthy, learn how you may be eligible to help those currently sick.<br>
<br>
<a href="../COVIDFree.html" style="font-family:FilsonProMedium; color:#585858;">Learn More &gt;</a></p>
</div>

<div class="col-lg-5 my-5 mx-auto px-4"><img alt="photo of Daniel Dae Kim with convalescent plasma" class="img-fluid" src="../getattachment/Home/ddk4cda.jpg?lang=en-US"></div>
</div>

</div>


<div style="background-color:#f0f0f0;">
<div class="container mb-5 pb-5">
<div class="row py-5">
<div class="stat-box col-sm-3">
<div class="stat-box-inner">
<div class="stat-box-header">
    <center>
    <asp:Label ID="lblusr" runat="server" Text="0"></asp:Label>
        </center>
</div>
<img src="../Everance/media/HomePage/wave-line%403x.png" class="pb-4">
<div class="stat-box-text">Number of Donors across the world</div>
</div>
</div><div class="col-sm-1">&nbsp;</div>
<div class="stat-box col-sm-3">
<div class="stat-box-inner">
<div class="stat-box-header"><center>
    <asp:Label ID="lblbld" runat="server" Text="0"></asp:Label>
        </center></div>
<img src="../Everance/media/HomePage/wave-line%403x.png" class="pb-4">
<div class="stat-box-text">Number of Liter Blood donated by people in our blood bank</div>
</div>
</div>
<div class="col-sm-1">&nbsp;</div>
    <div class="stat-box col-sm-3">
<div class="stat-box-inner">
<div class="stat-box-header"><center>
    <asp:Label ID="lblFeedBack" runat="server" Text="0"></asp:Label>
        </center></div>
<img src="../Everance/media/HomePage/wave-line%403x.png" class="pb-4">
<div class="stat-box-text">Number of Feedback we receive from our users</div>
</div>
</div>
</div>
</div>
</div>
<div class="container mb-5">
<h2>How to prepare</h2>
&nbsp;

<div class="row">
<div class="prepare-box col-sm-3">
<div class="prepare-box-inner mt-1 mx-auto">
<div class="text-center"><a href="../Donate/Donation-Process.html"><img alt="donation process icon" border="0" src="../getmedia/c168ca33-6f78-4298-bd88-63f01442ee81/donation.png"></a></div>

<div class="prepare-box-header my-3 text-center">Donation Process</div>

<div class="stat-box-text text-center">Transform lives in just 10 easy steps.</div>
</div>
</div>

<div class="col-sm-1">&nbsp;</div>

<div class="prepare-box col-sm-3">
<div class="prepare-box-inner mt-1 mx-auto">
<div class="text-center"><a href="../Donate/Donor-Eligibility.html"><img border="0" src="../getmedia/9363247b-a35d-4c63-9bf2-47553e32fd7a/eligibility.png" alt="check eligibility icon"></a></div>

<div class="prepare-box-header my-3 text-center">Check Eligibility</div>

<div class="stat-box-text text-center">Review our eligibility requirements.</div>
</div>
</div>

<div class="col-sm-1">&nbsp;</div>

<div class="prepare-box col-sm-3">
<div class="prepare-box-inner mt-1 mx-auto">
<div class="text-center"><a href="../Donate/Types-of-Donation.html"><img border="0" src="../getmedia/b9175fea-94f0-4c98-8825-142a0434a354/types.png" alt="donation types icon"></a></div>

<div class="prepare-box-header my-3 text-center">Donation Types</div>

<div class="stat-box-text text-center">Discover how certain donations impact more lives.</div>
</div>
</div>
</div>
</div>


  </div>






</asp:Content>
