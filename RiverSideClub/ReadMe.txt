This a webiste to demonstrate to prototype level various coding disciplines involved in creating a HTML5 form associated with a relational database

The website relates to the Riverside Sports Club which offers various facility types that can be booked by a member or block booked by a 
sporting organisation.

The various aspects of programming code are implemented in the following forms:

Form Validation is performed via Javascript on the MembersPage.html

Both Internal and Inline css is demonstrated on the ReportsPage.html - the background color has been changed to demo that the page just
 provides users with Reports/views generasted from the database; the inline css is included with the <h2> tag. Inline and Internal styling is
 not the preferred method of styling for this website as it  requires the maintenance of  entries in mulitple pages should a single change 
 be required in the database to change its overall look -  external css conatained in the form style.css has been used on all webpages to 
 ensure design consistency accross the database.
 
The Insert Satatement works with the FacilityBookingPage - the user is not required to enter a MemberID as the database automatically
assigns a new MemberID to the new member

The Select statement works with the MembersPage - when the Submit button is pressed all the valid member details stored in the database
are retrieved and displayed in a new php file. The user can then return to the MembersPage via a link provided

The Database is saved into the RiverSide folder in the file riverside.sql