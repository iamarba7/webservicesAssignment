<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CookiePage.aspx.cs" Inherits="YourNamespace.CookiePage" %>

<!DOCTYPE html>
<!--Start html Tag-->
<html>

    <!--start of head tag-->
<head>
    <title>ASP.NET Cookie Example</title>
    <link rel="stylesheet" type="text/css" href="Styles/PART2.css"/>


    <!--start of Script code-->
    <script>
        window.onload = function () {
            rotateAd();
        };

        function adfunct() {
            var adImages = document.querySelectorAll("#adImage1, #adImage2, #adImage3"); // Get all ad image elements
            var adIndex = 0; // Start with the first ad image

            // Hide all ad images except the first one
            for (var i = 1; i < adImages.length; i++) {
                adImages[i].style.display = "none";
            }

            setInterval(function () {
                adImages[adIndex].style.display = "none"; // Hide the current ad image

                adIndex = (adIndex + 1) % adImages.length; // Move to the next ad image

                adImages[adIndex].style.display = "inline-block"; // Show the next ad image
            }, 5000); // Change the ad every 5 seconds (adjust as needed)
        }

        window.onload = function () {
            adfunct();
        };






        function getAdLink(adIndex) {
            // Modify this function to return the desired link based on the ad index
            switch (adIndex) {
                case 1:
                    return "https://www.amazon.com/";
                case 2:
                    return "https://www.amazon.com/";
                // Add more cases for additional ad images
                case 3:
                    return "https://www.amazon.com/";
                // Add more cases for additional ad images

                default:
                    return "";
            }
        }
    </script>
    <!--end of script code-->

</head>
    <!--end of head tag-->

    <!--start of body-->
<body>
    <!--start of form-->
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            <br />
            <label class="fancy-label" for="txtName">Name:</label>
            <asp:TextBox CssClass="fancy-input" ID="txtName" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button CssClass="fancy-button" ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        </div>
        <br />
                <div>
                    <a id="adContainer1" href="#">
                    <img id="adImage1" src="etoothbrush.jpg" alt="Ad Image1" width="300" height="100"/>
                    </a>
                        <a id="adContainer2" href="#">
                        <img id="adImage2" src="chair.jpg" alt="Ad Image2" width="300" height="100"/>
                        </a>
                            <a id="adContainer3" href="#">
                            <img id="adImage3" src="Headset.jpg" alt="Ad Image3" width="300" height="100"/>
                            </a>
                </div>
                             <div>
                                <h2 class="fancy-heading"><b>Session Information</b></h2>
                                <ul>
                                  1:  <li><strong>Time:</strong> <%= Session["Time"] %></li>
                                  2:  <li><strong>User Agent:</strong> <%= Session["UserAgent"] %></li>
                                  3:  <li><strong>Remote IP:</strong> <%= Session["RemoteIP"] %></li>
                                </ul>
                            </div>
                <div>
                    <button class="fancy-button" type="button" onclick="location.href='Default.aspx'">RETURN TO START PAGE</button>
                </div>
    </form>
    <!--end of form-->
</body>
    <!--end of body-->
</html>
    <!--End html Tag -->
