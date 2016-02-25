//what do I want for this page?  i bet this is going to be a PIA...but anyways.  I want to select the month and get the data for that month, then I want to be able to click a button to save that data on the page and eventually add all the months

//when we select the month on the dropdown, the div changes to include the new month--

//so...what next?  i want to add the sms feature?  maybe a cute little 10% box?  if I have time...
//https://www.twilio.com

//get all the messages sent to the log in the last week that were sent TO the number.  match cell number to userID, display body of message

//month dropdown feature

  <div id="month-dropdown" class = "col-md-8 col-centered btn-group">
    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Months<span class="caret"></span></button>
      <ul class="dropdown-menu">
        <% for i in 1..12 %>
          <li><a id="month-choice" href="<%=i%>"><%=Date::MONTHNAMES[i]%></a></li>
        <% end %>
      </ul>
    </div> <!--end button group -->

