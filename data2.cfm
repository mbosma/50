{
    "timeline":
    {
		<!--- this is the first item on the timeline. Shows up as the oldest element - Timeline START HERE --->
        "headline":"College of Technology 50th Anniversary Celebration",
        "type":"default",
        "text":"<p>Use this timeline to see where we've been and what we're doing to celebrate this year. Scroll right to see historical events or jump to an era:</p><ul><li>Knoy Hall Built</li><li>Dean Depew Legacy</li><li>50th Anniversary Events</li></ul><p><a href='/contact/'>Add your memories here!</a></p>",
        "asset": {
            "media":"http://en.wikipedia.org/wiki/Purdue_University_College_of_Technology",
            "credit":"Wikipedia",
            "caption":""
        },
        "date": [
			<!--- *****************************
			This code outputs each post from the wordpress blog
			rss feed in the correct data format to be parsed by
			the jquery timeline script
			written by matt bosma 5/24/13
			*****************************  --->
			<cfset rssUrl = "http://blog.tech.purdue.edu/techpurdue/category/50th/feed">
			<cffeed action="read" source="#rssUrl#" query="entries" properties="info">
			<!---<cfdump var="#entries#">--->
			<cfoutput query="entries">
				<cfset entrydateday = mid(entries.PUBLISHEDDATE, 6,2)><!--- get the day --->
				<cfset entrydatemonth = mid(entries.PUBLISHEDDATE,9,3)><!--- get the month --->
				<cfset entrydateyear = mid(entries.PUBLISHEDDATE,13,4)><!--- get the year --->
				<cfset entrydate = entrydatemonth & ", " & entrydateday & ", " & entrydateyear><!--- make a readable date string --->
				<cfset entrydate = dateformat(entrydate, "mmm, dd, yyyy")><!--- convert the date string to a date object --->
				<cfset entrycontent = replace(entries.content, """", "", "all")><!--- remove double quotes from the content --->
				<cfif find("<img", entrycontent) gt 0><!--- find out if there is an image in the content --->
					<cfset entrycontent = right(entrycontent, len(entrycontent) - find("/>",entrycontent) -1 )><!--- remove the first image if there is --->
				</cfif>
				<cfset entryThumbnail = "">
				<cfif len(entries.LINKHREF) gt 10>
					<cfset entryThumbnail = left(entries.LINKHREF, len(entries.LINKHREF)-4) & "-150x150.jpg">
				</cfif>
				<cfif find("...", entrycontent) gt 0>
					<cfset entrycontent = entrycontent & "<p><a href='" & entries.RSSLINK & "'>Read More</a></p>">
				</cfif>
				<!--- output the variables from the rss feed in the json content format --->
				{
					"startDate":"#dateformat(entrydate, "yyyy,mm,dd")#",
					"endDate":"#dateformat(entrydate, "yyyy,mm,dd")#",
					"headline":"#entries.TITLE#",
					"text":"#entrycontent#",
					"tag":"",
					"classname":"",
					"asset": {
						"media":"#LINKHREF#",
						"thumbnail":"#entryThumbnail#",
						"credit":"",
						"caption":""
					}
				},
			</cfoutput>
		
			<!--- this is the last item on the timeline. Use a new date --->
            {
                "startDate":"2014,8,5",
                "endDate":"2014,8,5",
                "headline":"College of Technology > What we make moves the world forward",
                "text":"<p>Where moving the college forward. Read the dean's blog for more information</p>",
                "tag":"",
                "classname":"optionaluniqueclassnamecanbeaddedhere"
            }
			
        ],
		
        "era": [
            {
                "startDate":"2009,12,9",
                "endDate":"2011,12,11",
                "headline":"ERA: Dean Bertoline",
                "text":"<p>ERA text - Body text goes here, some HTML is OK</p>",
                "tag":"ERA text tag field"
            },
			{
                "startDate":"2003,11,9",
                "endDate":"2009,11,9",
                "headline":"ERA: Dean Depew",
                "text":"<p>ERA text - Body text goes here, some HTML is OK</p>",
                "tag":"ERA text tag field"
            }

        ]
    }
}