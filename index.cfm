<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>College of Technology Timeline</title>
		<link rel="stylesheet" type="text/css" href="/50/assets/css/50.css">
        <!-- jQuery -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        <!-- BEGIN TimelineJS -->
        <script type="text/javascript" src="assets/js/storyjs-embed.js"></script>
        <script>
            $(document).ready(function() {
                createStoryJS({
					type:       'timeline',
                    width:      '100%',
                    height:     '500',
                    source:     'data2.cfm',
                    embed_id:   'my-timeline'
                });
            });
        </script>
        <!-- END TimelineJS -->
    </head>
    
    <body bgcolor="#fff">
		<div class="header">
			<ul>
				<li><a href="#1">slide 2</a></li>
				<li><a href="#2">slide 3</a></li>
				<li><img src="assets/images/50year-technology.png" width="150" height="152" alt="CoT celebrates 50 years"></li>
				<li><a href="#0">begining</a></li>
				<li><a href="#4">end</a></li>
			</ul>
		</div>
		<div id="my-timeline"></div>
    </body>
</html>